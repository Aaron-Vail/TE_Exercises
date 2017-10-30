package com.techelevator.picker.model;

import java.time.LocalDate;
import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Registration {
	
	@NotBlank(message="* First name is required")
	private String firstName;
	
	@NotBlank(message="* Last name is required")
	private String lastName;
	
	@NotBlank(message="* Email address is required") 
	@Email(message="* Please enter a valid email address")
	private String email;
	
	@NotNull
	@Size(min = 8, message="* Password must be 8 characters long")
	private String password;
	
	@NotNull
	@Size(min = 8, message="* Password must be 8 characters long")
	private String passwordRepeat;
	
	@Min(value=1, message="* Minimum number of tickets not reached") 
	@Max(value=10, message="* Max number exceeded") @NotNull
	private Integer tickets;
	
	@NotNull
	private Date birthdate;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

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

	public String getPasswordRepeat() {
		return passwordRepeat;
	}

	public void setPasswordRepeat(String passwordRepeat) {
		this.passwordRepeat = passwordRepeat;
	}

	public Integer getTickets() {
		return tickets;
	}

	public void setTickets(Integer tickets) {
		this.tickets = tickets;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

}
