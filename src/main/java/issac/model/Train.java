package issac.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 列车信息
 * @TableName train
 */
@TableName(value ="train")
@Data
public class Train {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer trainid;

    /**
     * 列车名
     */
    private String trainname;

    /**
     * 列车类型
     */
    private String traintype;


}
