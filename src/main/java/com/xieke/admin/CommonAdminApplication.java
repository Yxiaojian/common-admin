package com.xieke.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@SpringBootApplication
@EnableTransactionManagement(proxyTargetClass = true)
public class CommonAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(CommonAdminApplication.class, args);
    }

}
