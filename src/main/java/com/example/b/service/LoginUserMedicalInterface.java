package com.example.b.service;

import com.example.b.pojo.UserMedical;

import java.util.List;

public interface LoginUserMedicalInterface {
    List<UserMedical> loginInterfaceMedicalTreatment();

    UserMedical login(String username, String password);

    int insertUserMedicalService(UserMedical userMedical);
}
