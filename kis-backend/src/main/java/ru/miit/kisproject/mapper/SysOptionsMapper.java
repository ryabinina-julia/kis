package ru.miit.kisproject.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.JdbcType;
import ru.miit.kisproject.model.SysOptions;

import java.util.List;

public interface SysOptionsMapper {
    /**
     * @mbg.generated generated automatically, do not modify!
     */
    @Delete({
        "delete from sys_options",
        "where option_name = #{optionName,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String optionName);

    /**
     * @mbg.generated generated automatically, do not modify!
     */
    @Insert({
        "insert into sys_options (option_name, option_value)",
        "values (#{optionName,jdbcType=VARCHAR}, #{optionValue,jdbcType=VARCHAR})"
    })
    int insert(SysOptions row);

    /**
     * @mbg.generated generated automatically, do not modify!
     */
    @Select({
        "select",
        "option_name, option_value",
        "from sys_options",
        "where option_name = #{optionName,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="option_name", property="optionName", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="option_value", property="optionValue", jdbcType=JdbcType.VARCHAR)
    })
    SysOptions selectByPrimaryKey(String optionName);

    /**
     * @mbg.generated generated automatically, do not modify!
     */
    @Select({
        "select",
        "option_name, option_value",
        "from sys_options"
    })
    @Results({
        @Result(column="option_name", property="optionName", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="option_value", property="optionValue", jdbcType=JdbcType.VARCHAR)
    })
    List<SysOptions> selectAll();

    /**
     * @mbg.generated generated automatically, do not modify!
     */
    @Update({
        "update sys_options",
        "set option_value = #{optionValue,jdbcType=VARCHAR}",
        "where option_name = #{optionName,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(SysOptions row);
}