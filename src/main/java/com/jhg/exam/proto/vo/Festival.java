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
	private int memberId;
	private String title;
	private String body;

	private String extra_writerName;
	private boolean extra_actorCanDelete;
	private boolean extra_actorCanModify;
}