package com.felix.learnspringframework.helloWorld;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

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
    public Person person2(String name, int age) {
        return new Person(name, age);
    }

    @Bean(name = "customAddress")
    public Address address() {
        return new Address("Baker Street", "London");
    }

    @Primary
    @Bean(name = "anotherCustomAddress")
    public Address address2() {
        return new Address("Baker Street2", "London2");
    }

    @Qualifier("address3Qualifier")
    @Bean(name = "anotherCustomAddress")
    public Address address3() {
        return new Address("Baker Street3", "London3");
    }
}
