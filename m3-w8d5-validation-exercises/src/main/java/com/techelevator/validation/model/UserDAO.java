package com.techelevator.validation.model;

public interface UserDAO {

	void saveUser(User user);

	User getUser(String email);

}
