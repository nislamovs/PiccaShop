package com.piccashop.springboot.configuration;

import org.h2.tools.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnExpression;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabase;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;
import org.springframework.jdbc.datasource.init.DataSourceInitializer;
import org.springframework.jdbc.datasource.init.DatabasePopulator;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.jdbc.datasource.init.ScriptUtils;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.Properties;

@Configuration
public class H2ServerConfiguration {

    private static final String H2_TCP_PORT="9092";
    private static final String H2_WEB_PORT="8093";

    @Value("${h2.tcp.port:"+H2_TCP_PORT+"}")
    private String h2TcpPort;

    @Value("${h2.web.port:"+H2_WEB_PORT+"}")
    private String h2WebPort;

    @Bean
    @ConditionalOnExpression("${h2.tcp.enabled:false}")
    public Server h2TcpServer() throws SQLException {
        return Server.createTcpServer("-tcp", "-tcpAllowOthers", "-tcpPort", h2TcpPort).start();
    }

    @Bean
    @ConditionalOnExpression("${h2.web.enabled:true}")
    public Server h2WebServer() throws SQLException {
        return Server.createWebServer("-web", "-webAllowOthers", "-webPort", h2WebPort).start();
    }
}