package com.techelevator.validation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.techelevator.validation.model.User;
import com.techelevator.validation.model.UserDAO;



@Controller
@SessionAttributes("email")
public class UserController {
	
	private UserDAO userDao;
	// GET: /
	@RequestMapping(path="/", method=RequestMethod.GET)
	public String getMainScreen() {
		return "homePage";
	}

	// Add the following Controller Actions

	// GET: /register
	// Return the empty registration view
	@RequestMapping(path="/registration")
	public String inputNewUser() {
		return "registration";
	}
	// POST: /register
	// Validate the model and redirect to confirmation (if successful) or return
	// the
	// registration view (if validation fails)
	@RequestMapping(path="/registration", method=RequestMethod.POST)
    public String registerNewUser(@RequestParam String email, @RequestParam String password, ModelMap model) {
    	User user = new User();
    	user.setEmail(email);
    	user.setPassword(password);
    	userDao.saveUser(user);
    	return "redirect:/login";
    }
	// GET: /login
	// Return the empty login view
	 @RequestMapping(path={"/login"})
	    public String inputLogin() {
	    	return "login";
	    }
	// POST: /login
	// Validate the model and redirect to login (if successful) or return the
	// login view (if validation fails)
	 @RequestMapping(path="/login", method=RequestMethod.POST)
	    public String loginUser(@RequestParam String email, @RequestParam String password, ModelMap model) {            
			User user = userDao.getUser(email);
			if (user != null) {
				if (user.getPassword().equals(password)) {
					model.addAttribute("email", user.getEmail());
					return "redirect:/";
				}
			}
	   		return "/login";
	     }
	// GET: /confirmation
	// Return the confirmation view
	 @RequestMapping(path="/confirmation", method=RequestMethod.GET)
		public String showConfirmation() {
			return "confirmation";
		}
	 
	 @RequestMapping(path="/logout")
	    public String logout(HttpSession session, ModelMap model) {
	    	session.invalidate();
	    	model.remove("email");
	        return "redirect:/";
	    }
}
