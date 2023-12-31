package com.jhg.exam.proto.service;

import org.springframework.stereotype.Service;

import com.jhg.exam.proto.repository.BoardRepository;
import com.jhg.exam.proto.vo.Board;

@Service
public class BoardService {
	private BoardRepository boardRepository;

	public BoardService(BoardRepository boardRepository) {
		this.boardRepository = boardRepository;
	}

	public Board getBoardById(int id) {
		return boardRepository.getBoardById(id);
	}
}
