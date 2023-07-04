package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 超级用户信息
 * @TableName superadmininfo
 */
@TableName(value ="superadmininfo")
@Data
public class Superadmininfo  {
    /**
     * 超级用户编号
     */
    @TableId(type = IdType.AUTO)
    private Integer superadminid;

    /**
     * 超级用户名
     */
    private String superadminname;

    /**
     * 超级用户密码
     */
    private String superadminpwd;
}
