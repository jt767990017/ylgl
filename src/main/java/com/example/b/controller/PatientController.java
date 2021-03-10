package com.example.b.controller;


import com.example.b.pojo.NumberOfRegisteredDiagnoses;
import com.example.b.pojo.Patient;
import com.example.b.pojo.UserMedical;
import com.example.b.service.LoginUserMedicalInterface;
import com.example.b.service.PatientMapperInterface;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 业务
 */
@Controller
@Slf4j
@RequestMapping("/patient")
public class PatientController {


    @Autowired
    PatientMapperInterface patientMapperInterface;

    //用户
    @Autowired
    LoginUserMedicalInterface loginUserMedicalInterface;

    /**
     * 查询菜单信息
     *
     * @return
     */
    @RequestMapping("/news/{medicalId}")
    public String getFindAll(@PathVariable String medicalId, HttpServletRequest request) {
        List<Patient> mapperPatientListFindAll = patientMapperInterface.getListPatientService();
        //新闻公告
        if (medicalId.equals("3")) {
            return "menu/news_announcement";
        }

/*
        for (Patient patient : mapperPatientListFindAll) {
            //患者信息
            if (medicalId.equals("4")) {
                request.setAttribute("patient", patient);
                log.info("[查询全部]" + patient);
            }
        }*/

        //患者信息
        if (medicalId.equals("4")) {
            List<UserMedical> userMedicals = loginUserMedicalInterface.loginInterfaceMedicalTreatment();
            for (UserMedical userMedical : userMedicals) {
                request.setAttribute("user", userMedical);
            }

            return "menu/patient_information";
        }

        //患者预约
        if (medicalId.equals("5")) {
            return "menu/huanzehyuyuepatient_information";
        }

        //诊断方案
        if (medicalId.equals("6")) {
            List<UserMedical> userMedicals = loginUserMedicalInterface.loginInterfaceMedicalTreatment();
            request.setAttribute("userM", userMedicals);
            log.info("诊断方案:" + request.getAttribute("log"));
            return "menu/diagnosis_plan";
        }

        //在线付费
        if (medicalId.equals("7")) {
            return "menu/pay_online";
        }

        //用户信息
        if (medicalId.equals("8")) {
            return "menu/user_Info";
        }

        return "";
    }

    /**
     * 患者信息
     *
     * @param patientName
     * @return
     */
    @RequestMapping("/aa/{patientName}")
    @ResponseBody
    public List<Patient> getPatientName(@PathVariable String patientName) {
        List<Patient> patientService = patientMapperInterface.getListPatientService();
       /* for (Patient patient : patientService) {
            patient.setPatientName(ToolsUtilConfig.ToPinyin(patient.getPatientName()));
        }
        patientService.forEach(System.out::println);*/
        return patientService;
    }


    /**
     * 新增患者预约
     */
    @RequestMapping("/huanzheyuyue")
    @ResponseBody
    public String huanzheyuyue(HttpServletRequest request) {
        Patient patient = new Patient();
        patient.setPatientId(0);
        patient.setPatientName(request.getParameter("username"));
        patient.setPatientSex(request.getParameter("sex"));
        patient.setPatientGuoji(request.getParameter("nationality"));
        patient.setPatientZhiye(request.getParameter("occupation"));
        patient.setPatientGsmc(request.getParameter("employer"));
        patient.setPatientEmali(request.getParameter("email"));
        patient.setPatientBirthday(request.getParameter("birthday"));
        patient.setPatientHyzk(request.getParameter("marital"));
        patient.setPatientIdCard(request.getParameter("inumber"));
        patient.setPatientSjhm(request.getParameter("mobile"));
        patient.setPatientGsdh(request.getParameter("ephone"));
        patient.setPatientSxlx(request.getParameter("communication"));
        patient.setPatientJzyx(request.getParameter("reason"));
        patient.setPatientSqxy(request.getParameter("creation_date"));
        patient.setPatientSqdbqz(request.getParameter("authorized"));
        String sucess = patientMapperInterface.insertPatient(patient);
        if ("成功".equals(sucess)) {
            request.setAttribute("msg", "预约成功");
        } else {
            request.setAttribute("msg", "预约失败");
        }
        return "menu/huanzehyuyuepatient_information";
    }

    /**
     * 保存诊断方案
     *
     * @param id
     * @param zdfa
     * @return
     */
    @RequestMapping("/diagnosisA")
    @ResponseBody
    public int diagnosisPlan(@RequestParam("id") Integer id, @RequestParam("zdfa") String zdfa) {
        System.out.println(id + "=========" + zdfa);
        int patient = patientMapperInterface.updatePatient(id, zdfa);
        return patient;
    }

    @RequestMapping("/rfd")
    @ResponseBody
    public NumberOfRegisteredDiagnoses rfd() {
        NumberOfRegisteredDiagnoses diagnoses = new NumberOfRegisteredDiagnoses();
        List<Patient> patientService = patientMapperInterface.getListPatientService();
        //诊断人数
        int countZD = (int) patientService.stream()
                .filter(patient -> !"".equals(patient.getPatientZdfa()) && patient.getPatientZdfa() != null).count();
        diagnoses.setNumber(patientService.size() - countZD);
        diagnoses.setRegistered(loginUserMedicalInterface.loginInterfaceMedicalTreatment().size());
        diagnoses.setDiagnosis(String.valueOf(countZD));
        return diagnoses;
    }

}
