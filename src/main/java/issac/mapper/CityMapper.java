package issac.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.City;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【city(城市信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.City
*/
@Component
public interface CityMapper extends BaseMapper<City> {

}
