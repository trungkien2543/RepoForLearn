package com.springmasterclass.study;

import com.springmasterclass.study.bean.Chef;
import com.springmasterclass.study.bean.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class StudyApplication implements CommandLineRunner {

	@Autowired
	private ApplicationContext applicationContext;

    public static void main(String[] args) {
		SpringApplication.run(StudyApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// Spring Container (Application Context): Chinh la cai kho luu tru va dieu hanh cua nha hang
		// khi ma nha hang mo cua (App Start)
		// ong chu Spring se quet mot luot danh sach va tu tay chuan bi cac do dung can thiet roi cat vao kho

		// Bean: Chinh la nhung Dung cu/nguyen lieu da duoc ong chu chuan bi san va dan nhan
		// Mot khi da nam trong kho nay, Spring se chiu trach nhiem nuoi song va vut bo khi khong can

		System.out.println("CHECK SINGLTON SCOPE");

		Chef chef1 = applicationContext.getBean(Chef.class);

		Chef chef2 = applicationContext.getBean(Chef.class);

		System.out.println("CHEF1 == CHEF2 ? " + (chef1 == chef2));

		System.out.println("CHECK PROTOTYPE SCOPE");

		Order order1 = applicationContext.getBean(Order.class);

		Order order2 = applicationContext.getBean(Order.class);

		System.out.println("ORDER1 == ORDER2 ? " + (order1 == order2));

	}
}
