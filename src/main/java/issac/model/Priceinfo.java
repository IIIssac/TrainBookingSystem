package issac.model;


import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;

/**
 * 价格信息
 * @TableName priceinfo
 */
@TableName(value ="priceinfo")
@Data
public class Priceinfo  {
    /**
     * 价格id
     */
    @TableId(type = IdType.AUTO)
    private Integer priceid;

    /**
     * 车厢号
     */
    private Integer sitenum;

    /**
     * 价格
     */
    private String price;

    /**
     * 起点站
     */
    private String stationnamefm;

    /**
     * 终点站
     */
    private String stationnameto;

}
