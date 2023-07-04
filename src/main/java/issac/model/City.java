package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

/**
 * 城市信息
 * @TableName city
 */
@TableName(value ="city")
@Data
public class City {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer cityid;

    /**
     * 城市
     */
    private String cityname;

}
