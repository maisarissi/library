package library.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BookControl {
	private int isbn;
	private int code;
	private String userCpf;
	private long expireDate;
	private int renewalNumber;
	
	public int getIsbn() {
		return isbn;
	}
	
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	
	public int getCode() {
		return code;
	}
	
	public void setCode(int code) {
		this.code = code;
	}
	
	public String getUserCpf() {
		return userCpf;
	}
	
	public void setUserCpf(String userCpf) {
		this.userCpf = userCpf;
	}

	public long getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(long expireDate) {
		this.expireDate = expireDate;
	}

	public int getRenewalNumber() {
		return renewalNumber;
	}

	public void setRenewalNumber(int renewalNumber) {
		this.renewalNumber = renewalNumber;
	}
	
	public String getFormattedExpireDate() {
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		return format.format(new Date(getExpireDate()));
	}
	
	public String getRemainingRenewal() {
		return getRenewalNumber() + "/3";
	}
}
