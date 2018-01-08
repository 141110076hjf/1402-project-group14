package edu.jyu.stumgm.entity;
// Generated 2017-12-21 20:45:50 by Hibernate Tools 4.0.1.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Teacher generated by hbm2java
 */
public class Teacher implements java.io.Serializable {

	private String id;
	private String name;
	private String passwd;
	private String gender;
	private String phone;
	private String email;
	private Set teacCous = new HashSet(0);

	public Teacher() {
	}
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPasswd() {
		return this.passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set getTeacCous() {
		return this.teacCous;
	}

	public void setTeacCous(Set teacCous) {
		this.teacCous = teacCous;
	}

}
