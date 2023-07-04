package issac.controller;

import issac.mapper.AdmininfoMapper;
import issac.model.Admininfo;
import issac.util.GlobalResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admininfo")
public class AdmininfoController {
    @Autowired   //注入对象
    private AdmininfoMapper admininfoMapper;


    @RequestMapping("/login")
    public String login(HttpSession session) {
        session.removeAttribute("loginAdmininfo");
        return "login";
}
    @ResponseBody
    @RequestMapping("/loginSubmit")
    public GlobalResult loginSubmit(String username, String password,  HttpSession session, Model model) {
        Admininfo admin = new Admininfo();
        admin.setAdminpwd(password);
        admin.setAdminname(username);
        admin = admininfoMapper.selectOneMD5(admin);
        if (admin!=null) {
            session.setAttribute("loginAdmininfo", admin);
            return GlobalResult.ok("注册成功");
        } else {
            model.addAttribute("msg", "账号或者密码错误");
            return GlobalResult.errorMsg("账号或者密码错误");
        }
    }

    @ResponseBody
    @RequestMapping("/registerSubmit")
    public GlobalResult infoList(Admininfo admininfo) {
        int insert = admininfoMapper.insertMD5(admininfo);
        if(insert==1)
            return GlobalResult.ok("注册成功");
        return GlobalResult.errorMsg("注册失败");
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session, Model model) {
        session.invalidate();
        return "redirect:login";
    }

    @RequestMapping("/tologin")
    public String tologin(HttpSession session) {
        return "superadmin/login";
    }
}
