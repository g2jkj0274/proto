package com.jhg.exam.proto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhg.exam.proto.service.FestivalService;
import com.jhg.exam.proto.vo.Festival;

// 축제 정보
@Controller
public class UsrFestivalController {
	
	private final FestivalService festivalService;

    public UsrFestivalController(FestivalService festivalService) {
        this.festivalService = festivalService;
    }

	@RequestMapping("/usr/map/kakao")
	public String showKakaoMap() {
		return "usr/map/kakao";
	}
	
	@RequestMapping("/usr/festival/f_list")
	public String showFestivalList(Model model) {
        List<Festival> festivals = festivalService.getFestivals();
        model.addAttribute("festivals", festivals);
        return "usr/festival/f_list";
    }
	
	@RequestMapping("/usr/map/testkakao")
	public String showTestKakaoMap() {
		return "usr/map/testkakao";
	}
}
