package com.example.b.service.impl;

import com.example.b.dao.UserMedicalMapper;
import com.example.b.pojo.UserMedical;
import com.example.b.service.LoginUserMedicalInterface;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 登录注册
 */
@Service
@Slf4j
public class LoginUserMedicalInterfaceImpl implements LoginUserMedicalInterface {

    @Autowired
    UserMedicalMapper userMedicalMapper;


    @Override
    public List<UserMedical> loginInterfaceMedicalTreatment() {
        List<UserMedical> userMedicals = userMedicalMapper.loginMedicalTreatment();
        userMedicals.forEach(user -> log.info("[登录服务]" + user));
        return userMedicals;
    }

    @Override
    public UserMedical login(String username, String password) {
        List<UserMedical> userMedicals = userMedicalMapper.loginMedicalTreatment();
        UserMedical medical = new UserMedical();
        for (UserMedical userMedical : userMedicals) {
            if (userMedical.getUsername().equals(username) && userMedical.getPassword().equals(password)) {
                medical.setUserId(0);
                medical.setUsername(username);
                medical.setPassword(password);
                return medical;
            }
        }
        return null;
    }

    /**
     * 注册
     *
     * @param userMedical
     * @return
     */
    @Override
    public int insertUserMedicalService(UserMedical userMedical) {
        int i = userMedicalMapper.insertUserMedical(userMedical);
        if (i == 1) {
            return i;
        }
        return 0;
    }
}
