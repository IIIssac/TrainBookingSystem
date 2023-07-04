package issac.controller;

import com.baomidou.mybatisplus.plugins.Page;
import issac.mapper.AdmininfoMapper;
import issac.mapper.SuperadmininfoMapper;
import issac.model.Admininfo;
import issac.model.Superadmininfo;
import issac.util.GlobalResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/superadmininfo")
public class SuperAdmininfoController {
    @Autowired   //注入对象
    private SuperadmininfoMapper superadmininfoMapper;


    @RequestMapping("/tologin")
    public String tologin(HttpSession session) {
        return "superadmin/login";
    }

    @RequestMapping("/loginSubmit")
    public String loginSubmit(String username, String password, String vercode, HttpSession session, Model model) {

        Superadmininfo superadmininfo = new Superadmininfo();
        superadmininfo.setSuperadminpwd(password);
        superadmininfo.setSuperadminname(username);
        superadmininfo = superadmininfoMapper.selectOne(superadmininfo);
        if (superadmininfo!=null) {
            session.setAttribute("loginAdmin", superadmininfo);
            session.setAttribute("loginType", "管理员");
            return "redirect:tomain";
        } else {
            model.addAttribute("msg", "账号或者密码错误");
            return "superadmin/login";
        }
    }

    @RequestMapping("/tomain")
    public String tomain(HttpSession session) {
        return "superadmin/main";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Superadmininfo superadmininfo = superadmininfoMapper.selectById(id);
        model.addAttribute("superadmininfo", superadmininfo);
        return "superadmininfo/superadmininfoUpdate";
    }

    @RequestMapping("/update") //修改数据
    public String update(Superadmininfo superadmininfo) {
        superadmininfoMapper.updateById(superadmininfo);
        return "redirect:list";
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session) {
        session.invalidate();
        return "superadmin/login";
    }

}
