package com.onthetop.Controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onthetop.domain.Session;
import com.onthetop.domain.User;
import com.onthetop.service.UserService;

@Controller
@RequestMapping("login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource
	private Session session;
	
	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String login() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println(auth.getPrincipal());
		return "/login/login";
	}
	
	@RequestMapping("/callback")
	public String callback() {
		logger.debug("redirecting to list page");
		return "/board/list";
	}
	
	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String signin(@ModelAttribute User user) throws Exception {
		
		userService.insertUser(user);
		return "redirect:/login";
	}
	
	@GetMapping("session")
	public String get() {
		logger.info("session info======="+session.toString());
		return session.toString();
	}

}
