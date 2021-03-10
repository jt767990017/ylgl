package com.example.b.service;

import com.example.b.pojo.Patient;

import java.util.List;

public interface PatientMapperInterface {
    List<Patient> getListPatientService();

    String insertPatient(Patient patient);

    int updatePatient(Integer id, String zdfa);
}
