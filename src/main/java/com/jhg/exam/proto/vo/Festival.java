package com.jhg.exam.proto.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Festival {
	private int id;
	private String regDate;
	private String updateDate;
	private String picture;
	private String title;
	private String body;
	private String startDate;
	private String endDate;
	private String address;
	private String inquiryCall;
	private String siteLink;
	private String classification; 
}
