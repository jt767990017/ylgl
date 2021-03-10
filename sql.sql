
-- 菜单表
CREATE medical_menu(
 medical_idint(11) NOT NULL,
 medical_namevarchar(255) DEFAULT NULL,
 medical_levelint(10) DEFAULT NULL,
PRIMARY KEY ( medical_id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (1, '业务管理', NULL);
INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (2, '系统设置', NULL);
INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (3, '新闻公告', 1);
INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (4, '患者信息', 1);
INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (5, '患者预约', 1);
INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (6, '诊断方案', 1);
INSERT INTOmedical_menu( medical_id ,medical_name ,medical_level ) VALUES (8, '用户信息', 2);


-- 患者信息表
CREATE patient(
 patient_idint(11) NOT NULL AUTO_INCREMENT,
 patient_namevarchar(255) DEFAULT NULL,
 patient_sexvarchar(500) DEFAULT NULL,
 patient_guojivarchar(500) DEFAULT NULL,
 patient_zhiyevarchar(500) DEFAULT NULL,
 patient_gsmcvarchar(500) DEFAULT NULL,
 patient_emalivarchar(500) DEFAULT NULL,
 patient_birthdayvarchar(255) DEFAULT NULL,
 patient_hyzkvarchar(255) DEFAULT NULL,
 patient_Id_cardvarchar(255) DEFAULT NULL,
 patient_sjhmvarchar(255) DEFAULT NULL,
 patient_gsdhvarchar(255) DEFAULT NULL,
 patient_sxlxvarchar(255) DEFAULT NULL,
 patient_jzyxvarchar(255) DEFAULT NULL,
 patient_sqxyvarchar(255) DEFAULT NULL,
 patient_sqdbqzvarchar(255) DEFAULT NULL,
 patient_zdfavarchar(255) DEFAULT NULL,
PRIMARY KEY ( patient_id ) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;


-- 医务人员与用户表
CREATE usermedical(
 userIdint(11) NOT NULL AUTO_INCREMENT,
 usernamevarchar(255) DEFAULT NULL,
 passwordvarchar(255) DEFAULT NULL,
 leixingvarchar(255) DEFAULT NULL,
PRIMARY KEY ( userId )
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;