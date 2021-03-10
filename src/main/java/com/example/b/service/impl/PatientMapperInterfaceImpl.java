package com.example.b.service.impl;

import com.example.b.dao.PatientMapper;
import com.example.b.pojo.Patient;
import com.example.b.service.PatientMapperInterface;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class PatientMapperInterfaceImpl implements PatientMapperInterface {

    @Autowired
    PatientMapper patientMapper;


    @Override
    public List<Patient> getListPatientService() {
        log.info("[service 调用服务层 患者预约]" + patientMapper.getPatientListFindAll());
        return patientMapper.getPatientListFindAll();
    }

    @Override
    public String insertPatient(Patient patient) {
        int nu = patientMapper.insertPatientDao(patient);
        log.info("[添加成功]" + nu);
        if (nu == 1) {
            return "成功";
        }
        return null;
    }

    @Override
    public int updatePatient(Integer id, String zdfa) {

        return patientMapper.updatePatientDao(id,zdfa);
    }
}
