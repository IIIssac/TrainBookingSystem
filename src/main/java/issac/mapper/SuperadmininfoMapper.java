package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Admininfo;
import issac.model.Superadmininfo;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【superadmininfo(超级用户信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Superadmininfo
*/
@Component
public interface SuperadmininfoMapper extends BaseMapper<Superadmininfo> {


}
