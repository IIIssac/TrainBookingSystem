package issac.controller;

import com.baomidou.mybatisplus.plugins.Page;
import issac.mapper.AdmininfoMapper;
import issac.mapper.CityMapper;
import issac.mapper.CitystationMapper;
import issac.mapper.StationMapper;
import issac.model.Admininfo;
import issac.model.City;
import issac.model.Citystation;
import issac.model.Station;
import issac.util.GlobalResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/city")
public class CityController {
    @Autowired   //注入对象
    private CityMapper cityMapper;
    @Autowired   //注入对象
    private CitystationMapper citystationMapper;
    @Autowired   //注入对象
    private StationMapper stationMapper;


    @RequestMapping("/add")
    public String toadd(HttpSession session) {
        return "citystationinfo/citystationinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String insert(City city, Station station) {
        city=cityMapper.selectOne(city);
        if(city==null){
            cityMapper.insert(city);
            stationMapper.insert(station);
        }
        else if (stationMapper.selectOne(station)==null) {
            stationMapper.insert(station);
        }
        city=cityMapper.selectOne(city);
        station=stationMapper.selectOne(station);
        Citystation citystation=new Citystation();
        citystation.setCityid(city.getCityid());
        citystation.setStationid(station.getStationid());
        citystationMapper.insert(citystation);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String delete(int id) {
        stationMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/list") //分页查询数据
    public String list(String keyword, Integer p, Integer pageSize, Model model) {

        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Station> sortPage = new Page<Station>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Station> stationList = stationMapper.selectPage(sortPage,null);
        List<City> cityList=new ArrayList<>();
        for(Station station:stationList){
            Citystation citystation=new Citystation();
            citystation.setStationid(station.getStationid());
            citystation=citystationMapper.selectOne(citystation);
            City city=cityMapper.selectById(citystation.getCityid());
            cityList.add(city);
        }
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("stationList", stationList);   //绑定接受参数
        model.addAttribute("cityList", cityList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "city/list");   //总条数
        return "citystationinfo/citystationinfoList";
    }
}
