/***
 **/
package issac.controller;

import com.baomidou.mybatisplus.plugins.Page;
import issac.mapper.OrderinfoMapper;
import issac.mapper.RouteMapper;
import issac.mapper.StationMapper;
import issac.model.Orderinfo;
import issac.model.Route;
import issac.model.Station;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * 后台orderinfo表的管理操作
 */
@Controller
@RequestMapping("/route")
public class RouteController {
    @Autowired
    private RouteMapper routeMapper;

    @Autowired
    private StationMapper stationMapper;



    @RequestMapping("/add")
    public String toAdd() {
        return "route/routeAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Route route,String stationname) {
        Station station=new Station();
        station.setStationname(stationname);
        station=stationMapper.selectOne(station);
        route.setStationid(String.valueOf(station.getStationid()));
        stationMapper.insert(station);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Station station) {
        stationMapper.updateById(station);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String save(int id) {
        stationMapper.deleteById(id);
        return "route/routeAdd";
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
        Page<Route> sortPage = new Page<Route>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Route> routeList = routeMapper.selectPage(sortPage, null);
        List<String> stationList=new ArrayList<>();
        for(Route route:routeList){
            Station station=stationMapper.selectById(route.getStationid());
            stationList.add(station.getStationname());
        }
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("routeList", routeList);   //绑定接受参数
        model.addAttribute("stationList", stationList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "route/list");
        return "route/routeList";
    }
}
