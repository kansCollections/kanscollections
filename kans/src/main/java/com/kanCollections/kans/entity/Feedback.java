package com.kanCollections.kans.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

//import org.springframework.context.annotation.Scope;
//import org.springframework.stereotype.Component;
//import org.springframework.web.bind.annotation.RequestParam;
//@Component
//@Scope("prototype")
@Entity
public class Feedback 
{
	private String realname;
	@Id //to make email field the primary key
	private String email;
	private String product;
	private String service;
	private String comments;
	private int rating;
	
	public Feedback() {}  //Default constructor for using the ModelAttribute 
	
	//Constructors block
	public Feedback(String realname, String email, String product, String service, String comments, int rating)
	{
		super();
		this.realname = realname;
		this.email = email;
		this.product = product;
		this.service = service;
		this.comments = comments;
		this.rating = rating;
	}
	
	//getters and setters block for the variables
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	@Override
	public String toString() {
		return "Feedback [name=" + realname + ",email=" + email + ", product=" + product + "service=" +service +"comments=" +comments +"rating=" +rating +"]";
	}
    
}
