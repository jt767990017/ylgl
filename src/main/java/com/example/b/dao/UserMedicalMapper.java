package com.example.b.dao;

import com.example.b.pojo.UserMedical;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMedicalMapper {
    List<UserMedical> loginMedicalTreatment();

    int insertUserMedical(UserMedical userMedical);
}
