package com.example.b.dao;

import com.example.b.pojo.MedicalMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MedicalMenuMapper {
    List<MedicalMenu> getMedicalMenuList();
//    List<Map<Integer,MedicalMenu>> getMedicalMenuList();
}
