package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Station;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【station(车站信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Station
*/@Component
public interface StationMapper extends BaseMapper<Station> {


}
