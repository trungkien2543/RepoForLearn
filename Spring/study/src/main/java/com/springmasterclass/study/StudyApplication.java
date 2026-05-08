package com.springmasterclass.study;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StudyApplication {

    public static void main(String[] args) {
		SpringApplication.run(StudyApplication.class, args);
	}

	// Starter: La cac goi Combo gom san thu vien
	// Auto-Configuration: La co che tu dong thiet lap Bean dua tren nhung thu vien co san trong du an
	// @Conditional: La bo dieu kien de Spring quyet dinh xem co nen tu cau hinh hay khong
}
