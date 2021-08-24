package com.ywhy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ywhy.vo.BoardVO;

@Controller
public class BoardController {
	//자료실 목록(페이징과 검색기능)
		@RequestMapping("/community")//get or post로 접근하는 매핑주소를 처리
		public String community(Model listM, HttpServletRequest request, BoardVO b) {
			
			return "board/community";
		}//bbs_list()
}
