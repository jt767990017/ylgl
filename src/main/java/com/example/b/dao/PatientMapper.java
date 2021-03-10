package com.example.b.dao;

import com.example.b.pojo.Patient;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PatientMapper {
    List<Patient> getPatientListFindAll();

    int insertPatientDao(Patient patient);

    int updatePatientDao(@Param("patientId") Integer id, @Param("patientZdfa") String zdfa);
}
