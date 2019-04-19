package com.dxc.webservices.client;

import java.rmi.RemoteException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.axis2.databinding.ADBException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dxc.validator.UserValidator;
import com.dxc.webservices.client.UserServiceStub.DeleteUser;
import com.dxc.webservices.client.UserServiceStub.GetAllUser;
import com.dxc.webservices.client.UserServiceStub.GetById;
import com.dxc.webservices.client.UserServiceStub.InsertUser;
import com.dxc.webservices.client.UserServiceStub.UpdateUser;
import com.dxc.webservices.client.UserServiceStub.User;

@Controller
public class BaseController {

	@Autowired
	private UserValidator userValidator;

	@RequestMapping("users")
	public String getAll(HttpServletRequest request) throws RemoteException, ADBException {
		UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		GetAllUser getAllUser = new GetAllUser();
		User[] userArray = serviceStub.getAllUser(getAllUser).get_return();
		request.setAttribute("users", userArray);
		for (User user : userArray) {
			System.out.println(user.getGender());
		}
		return "users";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String addUser(HttpServletRequest request) throws RemoteException {
		request.setAttribute("user", new User());
		List<String> listNation = new ArrayList<String>();
		listNation.add("Việt Nam");
		listNation.add("Lao");
		listNation.add("Campuchia");
		listNation.add("Malaysia");
		listNation.add("Singapo");
		listNation.add("Other");

		List<String> listJob = new ArrayList<String>();
		listJob.add("Engineer");
		listJob.add("Doctor");
		listJob.add("Nurse");
		listJob.add("Architect");
		listJob.add("Driver");
		listJob.add("Other");

		request.setAttribute("lstJob", listJob);
		request.setAttribute("lstNation", listNation);
		return "insertUser";
	}

	@RequestMapping(value = "/saveInsert", method = RequestMethod.POST)
	public String addUser(HttpServletRequest request, @ModelAttribute("user") com.dxc.model.User user,
			BindingResult bindingResult) throws RemoteException {

		userValidator.validate(user, bindingResult);
		if (bindingResult.hasErrors()) {
			List<String> listNation = new ArrayList<String>();
			listNation.add("Việt Nam");
			listNation.add("Lao");
			listNation.add("Campuchia");
			listNation.add("Malaysia");
			listNation.add("Singapo");
			listNation.add("Other");

			List<String> listJob = new ArrayList<String>();
			listJob.add("Engineer");
			listJob.add("Doctor");
			listJob.add("Nurse");
			listJob.add("Architect");
			listJob.add("Driver");
			listJob.add("Other");
			request.setAttribute("lstJob", listJob);
			request.setAttribute("lstNation", listNation);
			return "insertUser";
		} else {
			UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
			InsertUser insert = new InsertUser();
			User userStub = new User();
			userStub.setId(user.getId());
			userStub.setName(user.getName());
			userStub.setGender(user.getGender());

			userStub.setBirthday(user.getBirthday());
			userStub.setAddress(user.getAddress());
			userStub.setCellPhone(user.getCellPhone());
			userStub.setIdentityCard(user.getIdentityCard());
			userStub.setJob(user.getJob());
			userStub.setNationality(user.getNationality());
			userStub.setEmail(user.getEmail());
			insert.setUser(userStub);
			serviceStub.insertUser(insert);
			return "redirect:/index";
		}
	}

	@RequestMapping(value = { "/index", "/" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request) throws RemoteException {
		UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		GetAllUser getAllUser = new GetAllUser();
		User[] userArray = serviceStub.getAllUser(getAllUser).get_return();
		int getAll = userArray.length;
		request.setAttribute("users", userArray);
		request.setAttribute("usersLenght", getAll);
		return "Index";
	}

	@RequestMapping(value = "/detailUser/{id}", method = RequestMethod.GET)
	public String detailUser(HttpServletRequest request, @PathVariable("id") String id) throws RemoteException {
		UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		GetById getById = new GetById();
		getById.setId(id);
		User userStub = serviceStub.getById(getById).get_return();

		com.dxc.model.User user = new com.dxc.model.User();
		user.setId(userStub.getId());
		user.setName(userStub.getName());
		user.setGender(userStub.getGender());

		java.util.Date utilDate = userStub.getBirthday();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

		user.setBirthday(sqlDate);
		user.setAddress(userStub.getAddress());
		user.setCellPhone(userStub.getCellPhone());
		user.setIdentityCard(userStub.getIdentityCard());
		user.setJob(userStub.getJob());
		user.setNationality(userStub.getNationality());
		user.setEmail(userStub.getEmail());
		request.setAttribute("user", user);
		return "detailUser";
	}

	@RequestMapping(value = "/updateUser/{id}", method = RequestMethod.GET)
	public String updateUser(HttpServletRequest request, @PathVariable("id") String id) throws RemoteException {

		List<String> listNation = new ArrayList<String>();
		listNation.add("Việt Nam");
		listNation.add("Lao");
		listNation.add("Campuchia");
		listNation.add("Malaysia");
		listNation.add("Singapo");
		listNation.add("Other");

		List<String> listJob = new ArrayList<String>();
		listJob.add("Engineer");
		listJob.add("Doctor");
		listJob.add("Nurse");
		listJob.add("Architect");
		listJob.add("Driver");
		listJob.add("Other");
		UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		GetById getById = new GetById();
		getById.setId(id);
		User userStub = serviceStub.getById(getById).get_return();

		com.dxc.model.User user = new com.dxc.model.User();
		user.setId(userStub.getId());
		user.setName(userStub.getName());
		user.setGender(userStub.getGender());
		java.util.Date utilDate = userStub.getBirthday();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		user.setBirthday(sqlDate);
		user.setAddress(userStub.getAddress());
		user.setCellPhone(userStub.getCellPhone());
		user.setIdentityCard(userStub.getIdentityCard());
		user.setJob(userStub.getJob());
		user.setNationality(userStub.getNationality());
		user.setEmail(userStub.getEmail());

		request.setAttribute("lstJob", listJob);
		request.setAttribute("lstNation", listNation);
		request.setAttribute("user", user);
		return "updateUser";
	}

	@RequestMapping(value = "/saveEdit", method = RequestMethod.POST)
	public String saveEdit(HttpServletRequest request, @ModelAttribute("user") com.dxc.model.User user,
			BindingResult bindingResult) throws RemoteException {
		userValidator.validate(user, bindingResult);
		if (bindingResult.hasErrors()) {

			List<String> listNation = new ArrayList<String>();
			listNation.add("Việt Nam");
			listNation.add("Lao");
			listNation.add("Campuchia");
			listNation.add("Malaysia");
			listNation.add("Singapo");
			listNation.add("Other");

			List<String> listJob = new ArrayList<String>();
			listJob.add("Engineer");
			listJob.add("Doctor");
			listJob.add("Nurse");
			listJob.add("Architect");
			listJob.add("Driver");
			listJob.add("Other");

			UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
			GetById getById = new GetById();
			getById.setId(user.getId());
			User userStub = serviceStub.getById(getById).get_return();

			user.setId(userStub.getId());
			user.setName(userStub.getName());
			user.setGender(userStub.getGender());
			java.util.Date utilDate = userStub.getBirthday();
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			user.setBirthday(sqlDate);
			user.setAddress(userStub.getAddress());
			user.setCellPhone(userStub.getCellPhone());

			user.setIdentityCard(userStub.getIdentityCard());
			user.setJob(userStub.getJob());
			user.setNationality(userStub.getNationality());
			user.setEmail(userStub.getEmail());

			request.setAttribute("lstJob", listJob);
			request.setAttribute("lstNation", listNation);
			request.setAttribute("user", user);
			return "updateUser";
		}
		UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		UpdateUser update = new UpdateUser();
		User userStub = new User();
		userStub.setId(user.getId());
		userStub.setName(user.getName());
		userStub.setGender(user.getGender());
		java.sql.Date sqlDate = user.getBirthday();
		java.util.Date utilDate = new java.util.Date(sqlDate.getTime());
		userStub.setBirthday(utilDate);
		userStub.setAddress(user.getAddress());
		userStub.setCellPhone(user.getCellPhone());
		userStub.setIdentityCard(user.getIdentityCard());
		userStub.setJob(user.getJob());
		userStub.setNationality(user.getNationality());
		userStub.setEmail(user.getEmail());
		update.setUser(userStub);
		serviceStub.updateUser(update);
		return "redirect:/index";
	}

	@RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
	public String deleteUser(HttpServletRequest request, @PathVariable("id") String id) throws RemoteException {
		UserServiceStub serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		DeleteUser del = new DeleteUser();
		del.setId(id);
		serviceStub.deleteUser(del);
		return "redirect:/index";
	}
}
