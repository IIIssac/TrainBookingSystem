package issac.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Train;
import org.springframework.stereotype.Component;

/**
* @author Issac
* @description 针对表【train(列车信息)】的数据库操作Mapper
* @createDate 2023-05-08 20:12:58
* @Entity issac.model.Train
*/
@Component
public interface TrainMapper extends BaseMapper<Train> {


}
