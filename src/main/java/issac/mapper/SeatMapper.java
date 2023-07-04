package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Admininfo;
import issac.model.Seat;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public interface SeatMapper extends BaseMapper<Seat> {

    List<String> selectbus(@Param("tableName") String seattb,@Param("startid") String startid,@Param("endid") String endid);

    List<String> selectfir(@Param("tableName") String seattb,@Param("startid") String startid,@Param("endid") String endid);

    List<String> selectsec(@Param("tableName") String seattb,@Param("startid") String startid,@Param("endid") String endid);

    Seat selectseat(@Param("tableName")String seattb,@Param("seat") Seat seat);

    int updateseatstateById(@Param("tableName")String seattb,@Param("seat") Seat seat,@Param("state") String state);
}
