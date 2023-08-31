package com.jhg.exam.proto.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jhg.exam.proto.vo.Festival;

@Mapper
public interface FestivalRepository {
    @Select("SELECT * FROM festival")
    List<Festival> getForPrintFestivals(int limitStart, int limitTake, String searchKeywordTypeCode, String searchKeyword);
}
