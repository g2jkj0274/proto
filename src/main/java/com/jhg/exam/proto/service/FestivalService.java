package com.jhg.exam.proto.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jhg.exam.proto.repository.FestivalRepository;
import com.jhg.exam.proto.vo.Festival;

@Service
public class FestivalService {

    private final FestivalRepository festivalRepository;

    public FestivalService(FestivalRepository festivalRepository) {
        this.festivalRepository = festivalRepository;
    }

    public List<Festival> getFestivals() {
        return festivalRepository.getForPrintFestivals(-1, -1, null, null);
    }
}
