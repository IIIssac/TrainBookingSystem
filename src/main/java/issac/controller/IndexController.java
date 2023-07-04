package issac.controller;


import issac.mapper.*;
import issac.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.time.LocalTime;
import java.util.*;

@Controller
public class IndexController {
    @Autowired   //注入对象
    private AdmininfoMapper admininfoMapper;

    @Autowired   //注入对象
    private StationMapper stationMapper;
    @Autowired   //注入对象
    private TranbMapper tranbMapper;
    @Autowired   //注入对象
    private RouteMapper routeMapper;
    @Autowired   //注入对象
    private TranbseatMapper tranbseatMapper;
    @Autowired   //注入对象
    private SeatMapper seatMapper;
    @Autowired   //注入对象
    private CaruserMapper caruserMapper;
    @Autowired   //注入对象
    private OrderinfoMapper orderinfoMapper;
    @RequestMapping("/index")
    public String index(String startName, String endName, String senddate, Model model, HttpSession session) {
        if(session.getAttribute("senddate")!=null){
            if(startName==null||endName==null||senddate==null||startName==""||endName==""||senddate==""){
                startName= (String) session.getAttribute("startName");
                endName= (String) session.getAttribute("endName");
                senddate= (String) session.getAttribute("senddate");
            }
        }
        if(startName==null||endName==null||senddate==null)
            return "index";
        if(startName==""||endName==""||senddate==""){
            model.addAttribute("senddate", senddate);   //绑定接受参数
            model.addAttribute("startName", startName);   //绑定接受参数
            model.addAttribute("endName", endName);     //绑定接受参数
            return "index";
        }
        LocalTime starttime;
        LocalTime endtime;
        //startid开始站id endid终点站id
        Station station = new Station();
        station.setStationname(startName);
        int startid= stationMapper.selectOne(station).getStationid();
        station.setStationname(endName);
        int endid= stationMapper.selectOne(station).getStationid();
        //搜索经过两个车站的车次
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("stationid",startid);
        List<Route> startroutes = routeMapper.selectByMap(map1);
        map1.put("stationid",endid);
        List<Route> endroutes = routeMapper.selectByMap(map1);
        List<Route> startroute=new ArrayList<>();
        List<Route> endroute=new ArrayList<>();
        for(Route route1:startroutes){
            for(Route route2:endroutes){
                //获得时间
                starttime=LocalTime.parse(route1.getTime());
                endtime=LocalTime.parse(route2.getTime());
                //比较路线号和行车时间
                if((route1.getRoutenumber().equals(route2.getRoutenumber()))&&
                starttime.compareTo(endtime)<0){
                    startroute.add(route1);
                    endroute.add(route2);
                    break;
                }
            }
        }
        //符合搜索规则的车次列表
        List<Tranb> tranbList=new ArrayList<>();
        List<Route> startroute2=new ArrayList<>();
        List<Route> endroute2=new ArrayList<>();
        List<Tranbseat> tranbseatList=new ArrayList<>();
        for (int i = 0; i < startroute.size() && i < endroute.size(); i++) {
            Tranb tranb = new Tranb();
            tranb.setTranbdate(Date.valueOf(senddate));
            tranb.setRouteid(startroute.get(i).getRoutenumber());
            tranb=tranbMapper.selectOne(tranb);
            if(tranb!=null){
                tranbList.add(tranb);
                startroute2.add(startroute.get(i));
                endroute2.add(endroute.get(i));
                Tranbseat tranbseat = new Tranbseat();
                tranbseat.setTranbid(String.valueOf(tranb.getTranbid()));
                tranbseatList.add(tranbseatMapper.selectOne(tranbseat));
            }
        }
        session.setAttribute("senddate",senddate);
        session.setAttribute("startName",startName);
        session.setAttribute("endName",endName);
        model.addAttribute("tranbList", tranbList);   //绑定接受参数
        model.addAttribute("tranbseatList", tranbseatList);   //绑定接受参数
        model.addAttribute("startroute", startroute2);   //绑定接受参数
        model.addAttribute("endroute", endroute2);   //绑定接受参数
        model.addAttribute("startName", startName);   //绑定接受参数
        model.addAttribute("endName", endName);     //绑定接受参数
        model.addAttribute("senddate", senddate);   //绑定接受参数
        return "index";
    }

    @RequestMapping("/indexseat")
    public String indexseat(int id, String seattb, int money,String seatclass, String startid,String endid,Model model, HttpSession session) {
        List<String> seatlist=new ArrayList<>();
        int endid1=Integer.parseInt(endid);
        String endid2= String.valueOf((endid1-1));
        if("bus".equals(seatclass)){
            seatlist=seatMapper.selectbus(seattb,startid,endid2);
        } else if ("fir".equals(seatclass)) {
            seatlist=seatMapper.selectfir(seattb,startid,endid2);
        }else if("sec".equals(seatclass)){
            seatlist=seatMapper.selectsec(seattb,startid,endid2);
        }
        model.addAttribute("seatlist", seatlist);   //绑定接受参数
        model.addAttribute("seatclass", seatclass);   //绑定接受参数
        model.addAttribute("seattb",seattb);
        model.addAttribute("tranbid",id);
        model.addAttribute("money",money);
        model.addAttribute("startid",startid);
        model.addAttribute("endid",endid);
        return "indexSite";
    }

    @RequestMapping("/indexOrderinfoAdd")
    public String indexOrderinfoAdd(HttpSession session, int seatnumber, int tranid,String startid,String endid, String seatclass,String seattb, String money, Model model) {
        Map<String, Object> map = new HashMap<String, Object>();
        Admininfo admininfo= (Admininfo) session.getAttribute("loginAdmininfo");
        map.put("carusermanager",admininfo.getAdminid());
        List<Caruser> caruserList = caruserMapper.selectByMap(map);
        Orderinfo orderinfo = new Orderinfo();
        orderinfo.setOrderadminid(String.valueOf(admininfo.getAdminid()));
        orderinfo.setOrderseatid(seatnumber);
        orderinfo.setOrdermoney(money);
        orderinfo.setOrdertranbid(tranid);
        orderinfo.setOrderstartid(startid);
        orderinfo.setOrderendid(endid);
        orderinfo.setOrderseatclass(seatclass);
        model.addAttribute("orderinfo",orderinfo);
        model.addAttribute("caruserList", caruserList);
        return "orderinfoAdd";
    }


    //Todo:事务
    @Transactional
    public void updateseat(String seattb, int startid, int endid, String seattype, String seatnumber,String state) {
        int error;
        for(int i=startid;i<endid;i++){
            Seat seat = new Seat();
            seat.setSeatname(seatnumber);
            seat.setSeattype(seattype);
            seat.setSeatinterval(String.valueOf(i));
            seat=seatMapper.selectseat(seattb,seat);
            if(seat==null)
                //出错回滚
                error = 1 / 0;
            seat.setSeatstatue("1");
            if(seatMapper.updateseatstateById(seattb,seat,state)!=1){
                //出错回滚
                error = 1 / 0;
            }
        }
    }

    @RequestMapping("/indexOrderinfoSave")
        public String indexOrderinfoSave(HttpSession session, Orderinfo orderinfo, Model model) {
        orderinfoMapper.insert(orderinfo);
        Tranb tranb =tranbMapper.selectById(orderinfo.getOrdertranbid());
        String seattype1="0";
        if("bus".equals(orderinfo.getOrderseatclass()))
        seattype1="0";
        else if("fir".equals(orderinfo.getOrderseatclass()))
            seattype1="1";
        else if ("sec".equals(orderinfo.getOrderseatclass())) {
            seattype1="2";
        }
        int endid1=Integer.parseInt(orderinfo.getOrderendid());
        int startid1=Integer.parseInt(orderinfo.getOrderstartid());
        String seatnumber1= String.valueOf(orderinfo.getOrderseatid());
        //update更新座位状态
        updateseat(tranb.getTranbname(),startid1,endid1,seattype1,seatnumber1,"1");

        return "redirect:indexOrderList";
    }

    @RequestMapping("/indexOrderList")
    public String indexOrderList(HttpSession session, Model model) {
        Map<String, Object> map = new HashMap<String, Object>();
        Admininfo admininfo= (Admininfo) session.getAttribute("loginAdmininfo");
        map.put("orderadminid",admininfo.getAdminid());
        List<Orderinfo> orderinfoList = orderinfoMapper.selectByMap(map);
        List<Ticketinfo> ticketinfoList=new ArrayList<>();
        for(Orderinfo orderinfo:orderinfoList){
            Tranb tranb=tranbMapper.selectById(orderinfo.getOrdertranbid());
            Route route = new Route();
            route.setRoutenumber(tranb.getRouteid());
            route.setStationrankid(orderinfo.getOrderstartid());
            Route startroute=routeMapper.selectOne(route);
            Station startstation=stationMapper.selectById(startroute.getStationid());
            route.setStationrankid(orderinfo.getOrderendid());
            Route endroute=routeMapper.selectOne(route);
            Station endstation=stationMapper.selectById(endroute.getStationid());
            Caruser caruser=caruserMapper.selectById(orderinfo.getOrdercaruserid());
            String seatclass="";
            switch (orderinfo.getOrderseatclass()){
                case "bus":
                    seatclass="特等座";
                    break;
                case "fir":
                    seatclass="一等座";
                    break;
                case "sec":
                    seatclass="二等座";
                    break;
                default:break;
                }
            String rc="";
            int seatnumber= orderinfo.getOrderseatid();
            int row=seatnumber/5;
            int col=seatnumber%5;
            switch (col){
                case 1:
                    rc=row+"A";
                    break;
                case 2:
                    rc=row+"B";
                    break;
                case 3:
                    rc=row+"C";
                    break;
                case 4:
                    rc=row+"D";
                    break;
                case 5:
                    rc=row+"E";
                    break;
                default:break;
                }
            Ticketinfo ticketinfo = new Ticketinfo();
            ticketinfo.setOrderid(orderinfo.getOrderid());
            ticketinfo.setTrainbname(tranb.getTranbname());
            ticketinfo.setStartname(startstation.getStationname());
            ticketinfo.setStarttime(startroute.getTime());
            ticketinfo.setEndname(endstation.getStationname());
            ticketinfo.setEndtime(endroute.getTime());
            ticketinfo.setSeatclass(seatclass);
            ticketinfo.setSeatnumber(rc);
            ticketinfo.setCaruser(caruser.getCarusername());
            ticketinfo.setOrdertime(orderinfo.getOrdertime());
            ticketinfo.setOrderstate(orderinfo.getOrderstate());
            ticketinfoList.add(ticketinfo);
        }
        model.addAttribute("ticketinfoList", ticketinfoList);
        return "orderinfoList";
    }

    @RequestMapping("/indexOrderinfoState")
    public String indexOrderinfoState(HttpSession session, int id, String orderstate, Model model) {
        Orderinfo orderinfo = orderinfoMapper.selectById(id);
        orderinfo.setOrderstate(orderstate);
        if("已取消".equals(orderstate)||"已退票".equals(orderstate)){
            Tranb tranb =tranbMapper.selectById(orderinfo.getOrdertranbid());
            String seattype1="0";
            if("bus".equals(orderinfo.getOrderseatclass()))
                seattype1="0";
            else if("fir".equals(orderinfo.getOrderseatclass()))
                seattype1="1";
            else if ("sec".equals(orderinfo.getOrderseatclass())) {
                seattype1="2";
            }
            int endid1=Integer.parseInt(orderinfo.getOrderendid());
            int startid1=Integer.parseInt(orderinfo.getOrderstartid());
            String seatnumber1= String.valueOf(orderinfo.getOrderseatid());
            //update更新座位状态
            updateseat(tranb.getTranbname(),startid1,endid1,seattype1,seatnumber1,"0");
        }
        orderinfoMapper.updateById(orderinfo);
        return "redirect:indexOrderList";
    }
    @RequestMapping("/admininfoCenter")
    public String admininfoCenter(HttpSession session, Model model) {
        Admininfo admininfo = (Admininfo) session.getAttribute("loginAdmininfo");
        model.addAttribute("admininfo", admininfo);
        return "userinfoCenter";
    }
}
