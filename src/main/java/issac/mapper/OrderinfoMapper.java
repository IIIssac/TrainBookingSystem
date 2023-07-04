package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Orderinfo;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【orderinfo(订单信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Orderinfo
*/@Component
public interface OrderinfoMapper extends BaseMapper<Orderinfo> {


}
