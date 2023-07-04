package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;


/**
 * 乘车人信息
 * @TableName caruser
 */
@TableName(value ="caruser")
@Data
public class Caruser {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer caruserid;

    /**
     * 姓名
     */
    private String carusername;

    /**
     * 电话
     */
    private String caruserphone;

    /**
     * 身份证
     */
    private String carusercardid;

    /**
     * 人员类别
     */
    private String carusertype;

    /**
     * 所属用户adminid
     */
    private String carusermanager;

}
