package issac.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 车次列车信息
 * @TableName tranbtrain
 */
@TableName(value ="tranbtrain")
@Data
public class Tranbtrain {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer tranbtrainid;

    /**
     * 列车号
     */
    private String trainid;

    /**
     * 车次号
     */
    private String trainbid;

}
