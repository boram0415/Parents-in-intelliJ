package com.day.parents.parentsday.configuretion;

import com.day.parents.parentsday.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConf implements WebMvcConfigurer {

    private HandlerInterceptor authInterceptor ;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/*")
                .excludePathPatterns("/error"); // 해당 경로는 인터셉터가 가로채지 않는다.
    }

}
