package com.felix.learnspringframework;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// record를 사용하면 getter, setter 생성자를 만들 필요 없다.
record Person(String name, int age) {

}

record Address(String firstLine, String city) {

}

@Configuration
public class HelloWorldConfiguration {
    @Bean
    public String name() {
        return "Felix";
    }

    @Bean
    public int age() {
        return 26;
    }

    @Bean
    public Person person() {
        return new Person("Bob", 28);
    }

    @Bean
    public Address address() {
        return new Address("Baker Street", "London");
    }
}
