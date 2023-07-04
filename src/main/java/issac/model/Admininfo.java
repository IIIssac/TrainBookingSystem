package issac.model;




import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

/**
 * 用户信息
 * @TableName admininfo
 */
@TableName(value ="admininfo")
@Data
public class Admininfo {
    /**
     * 用户编号
     */
    @TableId(type = IdType.AUTO)
    private Integer adminid;

    /**
     * 用户名
     */
    private String adminname;

    /**
     * 用户密码
     */
    private String adminpwd;

    /**
     * 创建时间
     */
    private String admincreatetime;

    /**
     * 手机号码
     */
    private String adminnumber;

    /**
     * 邮箱
     */
    private String adminmail;

    /**
     * 用户状态
     */
    private String islock;

}
