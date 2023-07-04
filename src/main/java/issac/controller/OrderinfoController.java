/***
 **/
package issac.controller;

import com.baomidou.mybatisplus.plugins.Page;
import issac.mapper.OrderinfoMapper;
import issac.model.Orderinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 后台orderinfo表的管理操作
 */
@Controller
@RequestMapping("/orderinfo")
public class OrderinfoController {
    @Autowired
    private OrderinfoMapper orderinfoMapper;



    @RequestMapping("/add")
    public String toAdd() {
        return "orderinfo/orderinfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Orderinfo orderinfo) {
        orderinfoMapper.insert(orderinfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Orderinfo orderinfo) {
        orderinfoMapper.updateById(orderinfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String save(int id) {
        orderinfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Orderinfo orderinfo = orderinfoMapper.selectById(id);
        model.addAttribute("orderinfo", orderinfo);
        return "orderinfo/orderinfoUpdate";
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
        Page<Orderinfo> sortPage = new Page<Orderinfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Orderinfo> orderinfoList = orderinfoMapper.selectPage(sortPage, null);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("orderinfoList", orderinfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "orderinfo/list");   //总条数
        return "orderinfo/orderinfoList";
    }
}
