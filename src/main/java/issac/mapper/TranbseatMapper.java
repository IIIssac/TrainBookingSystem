package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Tranbseat;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.tomcat.websocket.BackgroundProcess;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【tranbseat(车次座位信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Tranbseat
*/@Component
public interface TranbseatMapper extends BaseMapper<Tranbseat> {


}
