package issac.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Caruser;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【caruser(乘车人信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Caruser
*/
@Component
public interface CaruserMapper extends BaseMapper<Caruser> {

}
