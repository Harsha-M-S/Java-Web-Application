package com.in28minutes.login;

public class Loginservice {
	public boolean isUserValid(String user, String password)
	{
		if(user.equals("Harsha") && password.equals("password"))
			return true;
		return false;
	}
}
