package com.felix.learnspringframework.helloWorld;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Arrays;

public class App02HelloWorldSpring {
    public static void main(String[] args) {
        // 1. Spring context 실행
        try (var context = new AnnotationConfigApplicationContext(HelloWorldConfiguration.class)) {
            // 2. Spring 프레임워크가 관리하도록 설정 - @Configuration

            // 3. Spring이 관리하는 Bean 검색하기
            System.out.println(context.getBean("name"));
            System.out.println(context.getBean("age"));
            System.out.println(context.getBean("person"));
            System.out.println(context.getBean("customAddress"));
            System.out.println(context.getBean(Address.class)); // Address.class 타입의 빈을 가져옴
            System.out.println(context.getBean("person2"));

            // Spring이 관리하는 빈 출력하기
            Arrays.stream(context.getBeanDefinitionNames()).forEach(System.out::println);
        }
    }
}
