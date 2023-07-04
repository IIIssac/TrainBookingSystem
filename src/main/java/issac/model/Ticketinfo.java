package issac.model;


import lombok.Data;

/**
 * 订单信息
 * @TableName orderinfo
 */
@Data
public class Ticketinfo {

    private int orderid;
    private String trainbname;
    private String startname;
    private String starttime;
    private String endname;
    private String endtime;
    private String seatclass;
    private String seatnumber;
    private String caruser;
    private String ordertime;
    private String orderstate;

}
