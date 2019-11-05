package net.orclmvn;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import net.orclmvn.User;

import net.orclmvn.User;
import net.orclmvn.User;


@Controller
public class MasterController {
	
	
	@Autowired
	private UserService userService;
	

	@RequestMapping("/")
	public String usermain(Model model) {
		List<User> listUsers = userService.listAll();
		model.addAttribute("listUsers", listUsers);
		return "user";
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String deleteForm(@PathVariable(name = "id") int id) {
		userService.delete(id);
		return "userdeleted";
		
	}
	
	@RequestMapping("/user")
	public String user(Model model) {
		List<User> listUsers = userService.listAll();
		model.addAttribute("listUsers", listUsers);
		return "useradd";
	}
	
	@RequestMapping(value = "useradded", method = RequestMethod.GET)
	public String useradd(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "useradded";
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String SaveProduct(@Valid User user, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "useradded";
		}
		userService.save(user);
		return "useradd";
	}
			
	
	@RequestMapping(value = "/update/update", method = RequestMethod.POST)
	public String UpdateUser(@Valid User user, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "userupdateform";
		}
		userService.save(user);
		return "userupdated";
	}
			
		
		@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	    public String showEditProductPage(@PathVariable(name = "id") int id, Model model) {
			User user = userService.get(id);
			model.addAttribute("user", user);
	        return "userupdateform";
		}
	
}

