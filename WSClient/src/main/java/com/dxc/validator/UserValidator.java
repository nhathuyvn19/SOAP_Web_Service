package com.dxc.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.dxc.model.User;

public class UserValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		//Kiem tra xem class truyen vao co phai la user hay khong
		return User.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		//Ep kieu target sang user
		User user = (User) target;
		
		Pattern pattern;
		Matcher matcher;
		
		if(user.getId().length() != 6){
			errors.rejectValue("id", "id.enough");
		}
		
		if (user.getId().length() == 6) {
			// Kiểm tra 3 ký tự đầu có phải là DXC?
			if(user.getId().substring(0, 3).compareTo("DXC") != 0)
				errors.rejectValue("id", "id.incorrect");
			// Kiểm tra 3 ký tự cuối có khác chữ số hay không?
			char[] temp = user.getId().toCharArray();
			for (int i = 3; i < 6; i++) {
				if (temp[i] < '0' && temp[i] > '9')
					errors.rejectValue("id", "id.incorrect");
			}
		}
		
		if(user.getName()==null || user.getName().length() == 0){
			errors.rejectValue("name", "field.required");
		}
		if (user.getName() != null && user.getName().length() != 0) {
			char[] temp = user.getName().toCharArray();
			int countSpace = 0;
			for (int i = 0; i < temp.length; i++) {
				if (temp[i] == ' ')
					countSpace++;
			}
			if (countSpace == temp.length)
				errors.rejectValue("name", "field.required");
		}
		
		if (user.getBirthday() == null) {
			errors.rejectValue("birthday", "birthday.null");
		}
		
		if(user.getAddress()==null || user.getAddress().length() == 0){
			errors.rejectValue("address", "field.required");
		}
		
		if (Integer.toString(user.getIdentityCard()).equals("0") || Integer.toString(user.getIdentityCard()).length() != 9) {
			errors.rejectValue("identityCard", "identity.format");
		}
		
		String regexEmail = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
		pattern = Pattern.compile(regexEmail);
		matcher = pattern.matcher(user.getEmail());
		if(matcher.matches() == false){
			errors.rejectValue("email", "email.error");
		}
	}

}
