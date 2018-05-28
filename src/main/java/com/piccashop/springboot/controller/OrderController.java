package com.piccashop.springboot.controller;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.util.JRLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@RestController
public class OrderController {

    @Autowired
    private DataSource dataSource;
    @Autowired
    private Environment environment;

    @RequestMapping(value = "/report", method = { RequestMethod.GET, RequestMethod.POST })
    public void report(@RequestParam Map<String, Object> param, HttpServletResponse response)
            throws JRException, SQLException, IOException {
        param = !ObjectUtils.isEmpty(param) ? param = new HashMap<>() : param;

        InputStream jasperStream = this.getClass().getResourceAsStream(environment.getRequiredProperty("report"));
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, dataSource.getConnection());

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline; filename=report.pdf");

        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
    }

}
