package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Tranb;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.sql.Date;

/**
* @author Issac
* @description 针对表【tranb(车次信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Tranb
*/
@Component
public interface TranbMapper extends BaseMapper<Tranb> {

//    @Insert("INSERT INTO tranb(tranbid,tranbname,routeid,tranbdate) values (3,#{tranbname},#{routeid},#{tranbdate})")
//    Integer insertstatic(@Param("tranbname")String tranbname, @Param("routeid")String routeid,@Param("tranbdate") Date tranbdate);
}
