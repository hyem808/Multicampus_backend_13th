package com.multi.mvc001;

public class MemberVO {
	
	private String id;
	private String post;
	private String content;
	private String created_at;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
	@Override
	public String toString() {
		return "MemberDAO [id=" + id + ", post=" + post + ", content=" + content + ", created_at=" + created_at + "]";
	}

}
