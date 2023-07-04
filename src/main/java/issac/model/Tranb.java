package issac.model;

import java.sql.Date;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 车次信息
 * @TableName tranb
 */
@TableName(value ="tranb")
@Data
public class Tranb {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer tranbid;

    /**
     * 车次名
     */
    private String tranbname;

    /**
     * 路线号
     */
    private String routeid;

    /**
     * 日期
     */
    private Date tranbdate;

}
