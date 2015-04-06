package com.zhiweiwang.datong.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface AmiinMapper {

	@Select("select * from amiin where username=#{username} and passwd=#{passwd}")
	public Map getAmiin(@Param("username") String username,@Param("passwd") String passwd);
	
	@Update("update sysconf set score=#{score} where username=#{username}")
	public void setValue(@Param("score") String score, @Param("username") String username);
	
	@Update("update amiin set feedback=#{feedback} where username=#{username}")
	public int updateFeedbake(@Param("username") String username, @Param("feedback") String feedback);

	@Select("select * from amiin order by score, nid")
	public List<Map<String, ?>> getAll();

}
