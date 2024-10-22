package in.biswa.entity;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity(name="STUDENT")
public class Student {
	@Id
	@Column(name="roll_no")
	private Integer rollNo;
	
	@Column(name="name")
	private String name;
	
	@Column(name="hostel_name")
	private String hostelName;
	
	@Column(name="room_no")
	private Integer roomNo;
	
	@Lob
	@Column(name="image")
	private byte[] img;
	
	public Student() {
		System.out.println("used by hibernate internally");
	}
	
	public Integer getRollNo() {
		return rollNo;
	}



	public void setRollNo(Integer rollNo) {
		this.rollNo = rollNo;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getHostelName() {
		return hostelName;
	}



	public void setHostelName(String hostelName) {
		this.hostelName = hostelName;
	}



	public Integer getRoomNo() {
		return roomNo;
	}



	public void setRoomNo(Integer roomNo) {
		this.roomNo = roomNo;
	}



	public byte[] getImg() {
		return img;
	}



	public void setImg(byte[] img) {
		this.img = img;
	}



	@Override
	public String toString() {
		return "Student [rollNo=" + rollNo + ", name=" + name + ", hostelName=" + hostelName + ", roomNo=" + roomNo
				+ ", img=" + Arrays.toString(img) + "]";
	}
	
	
}
