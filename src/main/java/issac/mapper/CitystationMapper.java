package issac.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Citystation;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【citystation(城市车站信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Citystation
*/
@Component
public interface CitystationMapper extends BaseMapper<Citystation> {


}
