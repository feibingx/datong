package com.zhiweiwang.datong.controller;

import com.zhiweiwang.datong.DTContants;
import com.zhiweiwang.datong.DTMessage;
import com.zhiweiwang.datong.DTUtils;
import com.zhiweiwang.datong.SysConfContants;
import com.zhiweiwang.datong.mapper.AmiinMapper;
import com.zhiweiwang.datong.mapper.SysconfMapper;
import com.zhiweiwang.datong.mapper.UserMapper;
import com.zhiweiwang.datong.model.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.UnsupportedEncodingException;
import java.util.Map;

@Controller
@RequestMapping("/amiin")
@SessionAttributes(DTContants.IAMIN_IN_SESSION)
public class AmiinController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AmiinMapper amiinMapper;

	@Autowired
	private SysconfMapper sysconfMapper;

	@RequestMapping(method = POST)
	public ModelAndView login(@RequestParam String username,
			@RequestParam String password) {
		logger.info("login selected User is {} ", new Object[] { username });

		ModelAndView mav = new ModelAndView();

		Map student = amiinMapper.getAmiin(username, password);

		if (student == null || student.get("score") == null) {
			logger.info("student is null");
			mav.getModel().put(DTContants.MSG_ERRER, DTMessage.IAMIN_NOT_FOUND);
			mav.setViewName("redirect:/amiin");
			return mav;
		}

		mav.setViewName("redirect:/iamin"); 

		mav.addObject(DTContants.IAMIN_IN_SESSION, student);

		return mav;
	}

	@RequestMapping(method = GET)
	public ModelAndView get(@ModelAttribute(DTContants.MSG_ERRER) String msg)
			throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();

		if (msg != null)
			mav.getModel().put(DTContants.MSG_ERRER, msg);

		return mav;
	}

}
