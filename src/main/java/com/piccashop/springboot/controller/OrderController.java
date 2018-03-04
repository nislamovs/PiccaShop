package com.piccashop.springboot.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

@Controller
public class OrderController {

    @Autowired private DataSource dataSource;

    @PostMapping("/report")
    public void report(@RequestParam Map<String, Object> param, HttpServletResponse response)
            throws JRException, SQLException, IOException {

        param = !ObjectUtils.isEmpty(param) ? param = new HashMap<>() : param;

        InputStream jasperStream = this.getClass().getResourceAsStream("/relatorios/carros.jasper");
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, dataSource.getConnection());

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline; filename=report.pdf");

        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
    }

    @PostMapping("/attachment")
    public void attachment(@RequestParam Map<String, Object> param, HttpServletResponse response)
            throws JRException, SQLException, IOException {

        param = !ObjectUtils.isEmpty(param) ? param = new HashMap<>() : param;

        InputStream jasperStream = this.getClass().getResourceAsStream("/relatorios/carros.jasper");
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, dataSource.getConnection());

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=report.pdf");

        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
    }
}
