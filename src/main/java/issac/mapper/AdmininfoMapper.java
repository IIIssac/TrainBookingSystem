package issac.mapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import issac.model.Admininfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Component
public interface AdmininfoMapper extends BaseMapper<Admininfo> {

    @Insert("insert into admininfo (adminname,adminpwd,adminnumber,adminmail) " +
            "values(#{adminname},MD5(#{adminpwd}),#{adminnumber},#{adminmail})")
    int insertMD5(Admininfo admininfo);

    @Select("select * from admininfo where adminname=#{adminname} and adminpwd=MD5(#{adminpwd}) ")
    Admininfo selectOneMD5(Admininfo admininfo);
}
