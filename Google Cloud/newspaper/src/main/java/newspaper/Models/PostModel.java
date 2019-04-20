package newspaper.Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="news")
public class PostModel implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String title;
	private String description;
	private String thumbnail;
	private String content1;
	private String content2;
	private String content3;
	private String content4;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String type;
	private String author;
	
	
	//Constructors
	public PostModel() {}
	public PostModel(String title, String description, String thumbnail, String content1, String content2,
			String content3, String content4, String image1, String image2, String image3, String image4, String type, String author) {
		super();
		this.title = title;
		this.description = description;
		this.thumbnail = thumbnail;
		this.content1 = content1;
		this.content2 = content2;
		this.content3 = content3;
		this.content4 = content4;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.type = type;
		this.author=author;
	}
	//Getters and Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getContent1() {
		return content1;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public String getContent3() {
		return content3;
	}
	public void setContent3(String content3) {
		this.content3 = content3;
	}
	public String getContent4() {
		return content4;
	}
	public void setContent4(String content4) {
		this.content4 = content4;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getImage4() {
		return image4;
	}
	public void setImage4(String image4) {
		this.image4 = image4;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@Override
	public String toString() {
		return "PostModel [id=" + id + ", title=" + title + ", description=" + description + ", thumbnail=" + thumbnail
				+ ", content1=" + content1 + ", content2=" + content2 + ", content3=" + content3 + ", content4="
				+ content4 + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4=" + image4
				+ ", type=" + type + "]";
	}
	
	
}
