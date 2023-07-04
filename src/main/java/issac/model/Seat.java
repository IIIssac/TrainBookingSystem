package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

/**
 * 用户信息
 * @TableName admininfo
 */
@Data
@TableName
public class Seat {
    /**
     * 用户编号
     */
    private Integer seatid;

    /**
     * 用户名
     */
    private String seatname;

    /**
     * 用户密码
     */
    private String seatstatue;

    /**
     * 创建时间
     */
    private String seatinterval;

    /**
     * 手机号码
     */
    private String seattype;

    public Seat() {
    }

    public Integer getSeatid() {
        return seatid;
    }

    public void setSeatid(Integer seatid) {
        this.seatid = seatid;
    }

    public String getSeatname() {
        return seatname;
    }

    public void setSeatname(String seatname) {
        this.seatname = seatname;
    }

    public String getSeatstatue() {
        return seatstatue;
    }

    public void setSeatstatue(String seatstatue) {
        this.seatstatue = seatstatue;
    }

    public String getSeatinterval() {
        return seatinterval;
    }

    public void setSeatinterval(String seatinterval) {
        this.seatinterval = seatinterval;
    }

    public String getSeattype() {
        return seattype;
    }

    public void setSeattype(String seattype) {
        this.seattype = seattype;
    }
}
