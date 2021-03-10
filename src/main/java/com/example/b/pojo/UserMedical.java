package com.example.b.pojo;


public class UserMedical {

  private Integer userId;
  private String username;
  private String password;
  private String leiXing;

  public String getLeiXing() {
    return leiXing;
  }

  public void setLeiXing(String leiXing) {
    this.leiXing = leiXing;
  }

  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return "UserMedical{" +
            "userId=" + userId +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", leiXing='" + leiXing + '\'' +
            '}';
  }
}
