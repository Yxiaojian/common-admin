package com.xieke.admin.config;

import com.baomidou.mybatisplus.core.config.GlobalConfig;
import com.baomidou.mybatisplus.core.injector.ISqlInjector;
import com.baomidou.mybatisplus.extension.injector.LogicSqlInjector;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PerformanceInterceptor;
import com.baomidou.mybatisplus.extension.spring.MybatisSqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.io.IOException;

@Configuration
@MapperScan("com.xieke.admin.mapper*")
public class MybatisPlusConfig {
    public MybatisPlusConfig() {
    }
    /**
     * mybatis-plus SQL执行效率插件【生产环境可以关闭】
     */
    @Bean
    public PerformanceInterceptor performanceInterceptor() {
        return new PerformanceInterceptor();
    }

    /**
     * mybatis-plus分页插件<br>
     * 文档：http://mp.baomidou.com<br>
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }

    @Bean
    public ISqlInjector sqlInjector() {
        return new LogicSqlInjector();
    }
//    public MybatisSqlSessionFactoryBean sqlSessionFactory(@Qualifier("primaryDataSource") DataSource dataSource) throws IOException {
//        MybatisSqlSessionFactoryBean mybatisPlus = new MybatisSqlSessionFactoryBean();
//
//        //加载数据源
//        mybatisPlus.setDataSource(dataSource);
//
//        //全局配置
//        GlobalConfig globalConfig  = new GlobalConfig();
//        //配置填充器
//        globalConfig.setMetaObjectHandler(new AutoMetaObjectHandler());
//        mybatisPlus.setGlobalConfig(globalConfig);
//
//        return mybatisPlus;
//    }

}