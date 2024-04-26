package com.green.evalBbs.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.green.evalBbs.dto.EvalBbsDto;

@Mapper
public interface IEvalBbsDao {
	
	public List<EvalBbsDto> getList();

	public void write(String title, String content, String writer, String regdate);
	
	public EvalBbsDto getDto(@Param("bno") int bno);
	
	public void delete(@Param("bno") int bno);
	

}
