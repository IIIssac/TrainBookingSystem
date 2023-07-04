package issac.controller;


import com.baomidou.mybatisplus.mapper.Wrapper;
import issac.mapper.AdmininfoMapper;
import issac.mapper.CaruserMapper;
import issac.model.Admininfo;
import issac.model.Caruser;
import issac.model.City;
import issac.model.Station;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/caruser")
public class CarUserController {
    @Autowired   //注入对象
    private CaruserMapper caruserMapper;
    @RequestMapping("/Add")
    public String Add(HttpSession session) {
        return "caruserAdd";
    }

    @RequestMapping("/Save")
    public String Save(HttpSession session, Caruser caruser, Model model) {
        caruserMapper.insert(caruser);
        return "redirect:List";
    }

    @RequestMapping("/List")
    public String List(HttpSession session, Model model) {
        Map<String,Object> map = new HashMap<String, Object>();
        Admininfo admininfo= (Admininfo) session.getAttribute("loginAdmininfo");
        map.put("carusermanager",String.valueOf(admininfo.getAdminid()));
        List<Caruser> caruserList = caruserMapper.selectByMap(map);
        model.addAttribute("caruserList", caruserList);
        return "caruserList";
    }

    @RequestMapping("/Delete")
    public String Delete(HttpSession session, int id, Model model) {
        caruserMapper.deleteById(id);
        return "redirect:List";
    }

    @RequestMapping("/Detail") //编辑数据
    public String detail(int id, Model model) {
        Caruser caruser = caruserMapper.selectById(id);
        model.addAttribute("caruser", caruser);
        return "caruser/caruserDetail";
    }
}
