package issac.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 路线信息
 * @TableName route
 */
@TableName(value ="route")
@Data
public class Route {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer routeid;

    /**
     * 车次号
     */
    private String stationid;
    private String routenumber;

    /**
     * 车次顺序号
     */
    private String stationrankid;

    private String distance;

    /**
     * 时间
     */
    private String time;

}
