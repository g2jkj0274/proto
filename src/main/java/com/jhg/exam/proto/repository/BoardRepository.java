package com.jhg.exam.proto.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jhg.exam.proto.vo.Board;

@Mapper
public interface BoardRepository {
	@Select("""
			SELECT *
			FROM board AS B
			WHERE B.id = #{id}
			AND B.delStatus = 0
			""")
	Board getBoardById(@Param("id") int id);
}
