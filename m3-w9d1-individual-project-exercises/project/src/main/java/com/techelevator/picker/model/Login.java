package com.techelevator.picker.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Login {
	
	@NotBlank(message="* Please enter your email address") 
	@Email(message="* Please enter a valid email address")
	private String email;
	
	@NotNull(message="* Please enter a valid password") 
	@Size(min = 2, max = 30, message="* Please re-enter your password")
	private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
