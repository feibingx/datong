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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.UnsupportedEncodingException;
import java.util.Map;

@Controller
@SessionAttributes(DTContants.IAMIN_IN_SESSION)
public class IaminController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private AmiinMapper amiinMapper;

	@Autowired
	private SysconfMapper sysconfMapper;

	@RequestMapping(method = POST, value = "iamin")
	public ModelAndView post(@RequestParam String feedback, @ModelAttribute(DTContants.IAMIN_IN_SESSION) Map student) {

		String username = student.get("username").toString();

		logger.info("i_am_in User is {} ", new Object[] { username });

		ModelAndView mav = new ModelAndView("redirect:/message");

		int updated = amiinMapper.updateFeedbake(username, feedback);

		if (updated > 0) {
			logger.info("student is null");
			if ("no".equalsIgnoreCase(feedback)) {
				mav.getModel().put(DTContants.MSG_ERRER, DTMessage.IAMIN_DONE_UPDATE_NO);
			} else {
				mav.getModel().put(DTContants.MSG_ERRER, DTMessage.IAMIN_DONE_UPDATE);
			}
		} else {
			logger.error("no updating anything" + username);
			mav.getModel().put(DTContants.MSG_ERRER, DTMessage.WRONG_NAME_OR_PASSWORD);
		}
		return mav;
	}

	@RequestMapping(method = GET, value = "/iamin")
	public ModelAndView get(@ModelAttribute(DTContants.IAMIN_IN_SESSION) Map student)
			throws UnsupportedEncodingException {
		// public ModelAndView get() throws UnsupportedEncodingException {
		logger.debug("i_am_in student: " + student.get("username").toString());
		return new ModelAndView("iamin");
	}

}
