package co.angellabs.controllers.profile;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.angellabs.entities.dto.User;
import co.angellabs.framework.controller.AuthenticationController;

@Controller
@RequestMapping("/User")
public class UserController extends AuthenticationController  {


	/*
	 * Registering controlling
	 */
	@RequestMapping(value="/register.htm", method=RequestMethod.GET)
	public ModelAndView joinUser() {
		ModelMap model = new ModelMap(); 
		
		return new ModelAndView("signin",model);
	}
	
	
	/*
	 * Login controlling
	 */
	
	@RequestMapping(value="/login.htm", method=RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelMap model = new ModelMap();
		
		return new ModelAndView("login",model);
	}
	
	public ModelAndView validateUserLogin(User user) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	/*
	 * Other operations
	 */
	public ModelAndView addUser(User user, ModelMap map) {
			// TODO Auto-generated method stub
			return null;
	}
		
	public ModelAndView deleteUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
