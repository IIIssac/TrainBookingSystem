/***
 **/
package issac.controller;

import com.baomidou.mybatisplus.plugins.Page;

import issac.mapper.RouteMapper;
import issac.mapper.StationMapper;
import issac.mapper.TranbMapper;
import issac.model.Route;
import issac.model.Station;
import issac.model.Tranb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.baomidou.mybatisplus.toolkit.JdbcUtils;

import java.sql.*;
import java.util.*;

/**
 * 后台carinfo表的管理操作
 */
@Controller
@RequestMapping("/tranb")
public class TranbController {

    @Autowired   //注入对象
    private TranbMapper tranbMapper;
    @Autowired   //注入对象
    private RouteMapper routeMapper;
    @Autowired   //注入对象
    private StationMapper stationMapper;



    @RequestMapping("/add")
    public String toAdd() {
        return "tranb/tranbAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Tranb tranb) throws SQLException, ClassNotFoundException {
/*        String routeid=tranb.getRouteid();
        String tranbname=tranb.getTranbname();
        Date tranbdate=tranb.getTranbdate();
        tranbMapper.insertstatic(tranbname,routeid,tranbdate);*/
//        tranbMapper.insert(tranb);
        Class.forName("com.mysql.jdbc.Driver");
        String user="root";
        String password="17122897";
        String url="jdbc:mysql://localhost:3306/dbpro?characterEncoding=utf-8&useSSL=false&serverTimezone=GMT";
        Connection connection= DriverManager.getConnection(url,user,password);
        String sql="insert into tranb(tranbname,routeid,tranbdate) values(?,?,?)";
        PreparedStatement preparedStatement=connection.prepareStatement(sql);
        preparedStatement.setString(1, tranb.getTranbname());
        preparedStatement.setString(2, tranb.getRouteid());
        preparedStatement.setDate(3, tranb.getTranbdate());
        int i= preparedStatement.executeUpdate();
        preparedStatement.close();
        sql="{call createseat(?)}";
        CallableStatement clbStmt = connection.prepareCall(sql);
        clbStmt.setString(1,tranb.getTranbname());
        clbStmt.execute();
        sql="{call insertseat(?,?)}";
        clbStmt = connection.prepareCall(sql);
        clbStmt.setString(1,tranb.getTranbname());
        List<Route> routes = new ArrayList<>();
        Map<String,Object> map=new HashMap<>();
        map.put("routenumber",tranb.getRouteid());
        routes=routeMapper.selectByMap(map);
        int j= routes.size()-1;
        clbStmt.setInt(2,j);
        clbStmt.execute();
        clbStmt.close();
        connection.close();
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Tranb tranb) {
        tranbMapper.updateById(tranb);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String save(int id) {
        tranbMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Tranb tranb = tranbMapper.selectById(id);
        model.addAttribute("tranb", tranb);
        return "tranb/tranbUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Tranb tranb = tranbMapper.selectById(id);
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("routenumber",tranb.getRouteid());
        List<Route> routeList= routeMapper.selectByMap(map1);
        List<String> timeList=new ArrayList<>();
        List<String> stationList=new ArrayList<>();
        for(Route route:routeList){
            timeList.add(route.getTime());
            Station station=stationMapper.selectById(route.getStationid());
            stationList.add(station.getStationname());
        }
        model.addAttribute("timeList",timeList);
        model.addAttribute("stationList",stationList);
        model.addAttribute("tranb", tranb);
        return "tranb/tranbDetail";
    }

    /**
     * @param keyword  搜索关键词
     * @param p        页面            默认第1页
     * @param pageSize 每页显示条数 默认每页10条
     * @param model
     * @return
     */
    @RequestMapping("/list") //分页查询数据
    public String list(String keyword, Integer p, Integer pageSize, Model model) {
        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Tranb> sortPage = new Page<Tranb>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Tranb> tranbList = tranbMapper.selectPage(sortPage, null);
        List<String> starttimeList=new ArrayList<>();
        List<String> endtimeList=new ArrayList<>();
        List<String> startstationList=new ArrayList<>();
        List<String> endstationList=new ArrayList<>();
        for(Tranb tranb:tranbList){
                    Map<String, Object> map1 = new HashMap<String, Object>();
            map1.put("routenumber",tranb.getRouteid());
            List<Route> routeList= routeMapper.selectByMap(map1);
            starttimeList.add(routeList.get(0).getTime());
            endtimeList.add(routeList.get(routeList.size()-1).getTime());
            startstationList.add(stationMapper.selectById(routeList.get(0).getStationid()).getStationname());
            endstationList.add(stationMapper.selectById(routeList.get(routeList.size()-1).getStationid()).getStationname());
        }
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("tranbList", tranbList);   //绑定接受参数
        model.addAttribute("starttimeList",starttimeList);
        model.addAttribute("startstationList",startstationList);
        model.addAttribute("endtimeList",endtimeList);
        model.addAttribute("endstationList",endstationList);
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "tranb/list");   //总条数
        return "tranb/tranbList";
    }
}
