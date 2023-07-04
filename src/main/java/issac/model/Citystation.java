package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 城市车站信息
 * @TableName citystation
 */
@TableName(value ="citystation")
@Data
public class Citystation  {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer citystationid;

    /**
     * 城市编号
     */
    private Integer cityid;

    /**
     * 车站城市
     */
    private Integer stationid;

}
