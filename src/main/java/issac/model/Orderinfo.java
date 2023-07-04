package issac.model;


import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

/**
 * 订单信息
 * @TableName orderinfo
 */
@TableName(value ="orderinfo")
@Data
public class Orderinfo {
    /**
     * 订单编号
     */
    @TableId(type = IdType.AUTO)
    private Integer orderid;

    /**
     * 乘车人编号
     */
    private Integer ordercaruserid;

    /**
     * 下单用户
     */
    private String orderadminid;

    /**
     * 下单时间
     */
    private String ordertime;

    /**
     * 订单状态
     */
    private String orderstate;

    /**
     * 车次编号
     */
    private Integer ordertranbid;

    /**
     * 座位编号
     */
    private Integer orderseatid;

    /**
     * 订单金额
     */
    private String ordermoney;
    private String orderstartid;
    private String orderendid;
    private String orderseatclass;
}
