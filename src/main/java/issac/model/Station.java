package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 车站信息
 * @TableName station
 */
@TableName(value ="station")
@Data
public class Station {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer stationid;

    /**
     * 车站名
     */
    private String stationname;

}
