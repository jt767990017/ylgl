package com.example.b.pojo;


public class MedicalMenu {

  private Integer medicalId;
  private String medicalName;
  private Integer medicalLevel;


  public Integer getMedicalId() {
    return medicalId;
  }

  public void setMedicalId(Integer medicalId) {
    this.medicalId = medicalId;
  }


  public String getMedicalName() {
    return medicalName;
  }

  public void setMedicalName(String medicalName) {
    this.medicalName = medicalName;
  }


  public Integer getMedicalLevel() {
    return medicalLevel;
  }

  public void setMedicalLevel(Integer medicalLevel) {
    this.medicalLevel = medicalLevel;
  }

  @Override
  public String toString() {
    return "MedicalMenu{" +
            "medicalId=" + medicalId +
            ", medicalName='" + medicalName + '\'' +
            ", medicalLevel=" + medicalLevel +
            '}';
  }
}
