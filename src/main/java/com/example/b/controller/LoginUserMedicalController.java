package com.example.b.controller;

import com.example.b.pojo.MedicalMenu;
import com.example.b.pojo.UserMedical;
import com.example.b.service.LoginUserMedicalInterface;
import com.example.b.service.MedicalMenuInterface;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/login")
public class LoginUserMedicalController {


    //用户
    @Autowired
    LoginUserMedicalInterface loginUserMedicalInterface;

    //菜单
    @Autowired
    MedicalMenuInterface medicalMenuInterface;

    /**
     * 跳转注册
     *
     * @return
     */
    @RequestMapping("/zhu")
    public String zhu() {
        return "loginCopy";
    }

    /**
     * 注册
     *
     * @param userMedical
     * @return
     */
    @RequestMapping("/zhuce")
    public String zhuce(UserMedical userMedical) {
        int i = loginUserMedicalInterface.insertUserMedicalService(userMedical);
        if (i == 1) {
            return "login";
        }
        return "loginCopy";
    }

    /**
     * 用户登录
     */
    UserMedical logs = null;

    @PostMapping("/log")
    public String login(HttpServletRequest request) {
        logs = loginUserMedicalInterface.login(request.getParameter("username"), request.getParameter("password"));
        if (logs != null) {
            request.setAttribute("msg", "登录成功");
            return "shelf/index";
        } else {
            System.out.println("失败");
            request.setAttribute("msg", "用户名密码错误");
            return "login";
        }
    }

    @RequestMapping("/session")
    @ResponseBody
    public String sessionLog() {
        System.out.println(logs.getUsername());
        return logs.getUsername();
    }

    /**
     * 头页面
     *
     * @return
     */
    @RequestMapping("/head")
    private String headJsp(HttpServletRequest request) {
        request.setAttribute("user", logs.getUsername());
        return "shelf/head";
    }

    /**
     * 左边页面
     *
     * @return
     */
    @RequestMapping("/left")
    private String leftJsp(HttpServletRequest request) {
        //菜单
        List<MedicalMenu> medicalMenu = medicalMenuInterface.getListMedicalMenu();

        //医务人员
        List<MedicalMenu> m1 = new ArrayList<>();
        //用户
        List<MedicalMenu> mm2 = new ArrayList<>();

        for (MedicalMenu menu : medicalMenu) {
            if (!"患者预约".equals(menu.getMedicalName()) && !"在线付费".equals(menu.getMedicalName()) && !"诊断方案".equals(menu.getMedicalName())) {
                m1.add(menu);
            }

            if ("诊断方案".equals(menu.getMedicalName()) || "业务管理".equals(menu.getMedicalName()) || "新闻公告".equals(menu.getMedicalName()) || "患者预约".equals(menu.getMedicalName()) || "在线付费".equals(menu.getMedicalName())) {
                mm2.add(menu);
            }
        }
        //用户
        List<UserMedical> userMedicals = loginUserMedicalInterface.loginInterfaceMedicalTreatment();

        for (UserMedical userMedical : userMedicals) {
            if ("医务人员".equals(userMedical.getLeiXing()) && logs.getUsername().equals(userMedical.getUsername())) {
                request.setAttribute("menu", m1);
            }
            if ("用户".equals(userMedical.getLeiXing()) && logs.getUsername().equals(userMedical.getUsername())) {
                request.setAttribute("menu", mm2);
            }
        }

        return "shelf/left";
    }

    /**
     * 右边页面
     *
     * @return
     */
    @RequestMapping("/right")
    private String rightJsp() {
        return "shelf/right";
    }


}
