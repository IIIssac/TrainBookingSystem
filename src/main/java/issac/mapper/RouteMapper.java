package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Route;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【route(路线信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Route
*/@Component
public interface RouteMapper extends BaseMapper<Route>{

}
