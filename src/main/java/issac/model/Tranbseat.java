package issac.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.Data;

/**
 * 车次座位信息
 * @TableName tranbseat
 */
@TableName(value ="tranbseat")
@Data
public class Tranbseat {
    /**
     * 编号
     */
    @TableId(type = IdType.AUTO)
    private Integer tranbseatid;

    /**
     * 车次号
     */
    private String tranbid;

    /**
     * 座位表
     */
    private String seattb;

    /**
     * 商务座
     */
    private String businessclass;

    /**
     * 一等座
     */
    private String firstclass;

    /**
     * 二等座
     */
    private String secondclass;

}
