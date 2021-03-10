package com.example.b.service.impl;

import com.example.b.dao.MedicalMenuMapper;
import com.example.b.pojo.MedicalMenu;
import com.example.b.pojo.UserMedical;
import com.example.b.service.MedicalMenuInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 菜单服务
 */
@Service
public class MedicalMenuInterfaceImpl implements MedicalMenuInterface {

    @Autowired
    MedicalMenuMapper medicalMenuMapper;

    @Override
    public List<MedicalMenu> getListMedicalMenu() {
        List<MedicalMenu> medicalMenuList = medicalMenuMapper.getMedicalMenuList();
        medicalMenuList.forEach(System.out::println);
//        List<Map<Integer, MedicalMenu>> medicalMenuList = medicalMenuMapper.getMedicalMenuList();
//        for (Map<Integer, MedicalMenu> integerMedicalMenuMap : medicalMenuList) {
//            System.out.println(integerMedicalMenuMap);
//        }

        return medicalMenuList;
    }


    public static void main(String[] args) {
        MedicalMenuInterfaceImpl medicalMenuInterface = new MedicalMenuInterfaceImpl();
        medicalMenuInterface.getListMedicalMenu();
    }
}
