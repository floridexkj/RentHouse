package cn.hp.house.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

/**
 * House entity. @author MyEclipse Persistence Tools
 */

public class House implements java.io.Serializable {

	// Fields

	private int id;
	private Users users;
	private Types type;
	private Street street;
	private String title;
	private String description;
	private int price;
	private Timestamp pubdate;
	private int floorage;
	private String contact;

	// Constructors

	/** default constructor */
	public House() {
	}

	/** full constructor */
	public House(Users users, Types types, Street street, String title,
			String description, int price, Timestamp pubdate,
			int floorage, String contact) {
		this.users = users;
		this.type = types;
		this.street = street;
		this.title = title;
		this.description = description;
		this.price = price;
		this.pubdate = pubdate;
		this.floorage = floorage;
		this.contact = contact;
	}

	// Property accessors

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Types getTypes() {
		return this.type;
	}

	public void setTypes(Types types) {
		this.type = types;
	}

	public Street getStreet() {
		return this.street;
	}

	public void setStreet(Street street) {
		this.street = street;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return this.price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Timestamp getPubdate() {
		return this.pubdate;
	}

	public void setPubdate(Timestamp pubdate) {
		this.pubdate = pubdate;
	}

	public int getFloorage() {
		return this.floorage;
	}

	public void setFloorage(int floorage) {
		this.floorage = floorage;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

}