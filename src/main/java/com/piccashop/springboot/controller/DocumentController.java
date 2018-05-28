package com.piccashop.springboot.controller;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.export.ooxml.JRDocxExporter;
import net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/doc")
public class DocumentController {

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

    @RequestMapping(value = "/attachment", method = { RequestMethod.GET, RequestMethod.POST })
    public void attachment(@RequestParam Map<String, Object> param, HttpServletResponse response)
            throws JRException, SQLException, IOException {

        param = !ObjectUtils.isEmpty(param) ? param = new HashMap<>() : param;

        InputStream jasperStream = this.getClass().getResourceAsStream(environment.getRequiredProperty("report"));
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, dataSource.getConnection());

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=report.pdf");

        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
    }

    @RequestMapping(value = "/docxattachment", method = { RequestMethod.GET, RequestMethod.POST })
    public void docattachment(@RequestParam Map<String, Object> param, HttpServletResponse response)
            throws JRException, SQLException, IOException {

        param = !ObjectUtils.isEmpty(param) ? param = new HashMap<>() : param;

        InputStream jasperStream = this.getClass().getResourceAsStream(environment.getRequiredProperty("report"));
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, dataSource.getConnection());

        response.setContentType("application/vnd.ms-word");
//        response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
        response.setHeader("Content-Disposition", "attachment; filename=report.doc");
        OutputStream outputStream = response.getOutputStream();

        JRDocxExporter exporter = new JRDocxExporter();
        exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
        exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(outputStream));
//        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
//        exporter.setParameter(JRDocxExporterParameter.FLEXIBLE_ROW_HEIGHT, true);
//        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,outputStream);
        exporter.exportReport();
    }

    @RequestMapping(value = "/xlsxattachment", method = { RequestMethod.GET, RequestMethod.POST })
    public void xlsxattachment(@RequestParam Map<String, Object> param, HttpServletResponse response)
            throws JRException, SQLException, IOException {

        param = !ObjectUtils.isEmpty(param) ? param = new HashMap<>() : param;

        InputStream jasperStream = this.getClass().getResourceAsStream(environment.getRequiredProperty("report"));
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, dataSource.getConnection());

        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=report.xlsx");
        OutputStream outputStream = response.getOutputStream();

//        jasperreports version 4.1.1

//        JRXlsxExporter exporter = new JRXlsxExporter();
//        exporter.setParameter(JRXlsExporterParameter.JASPER_PRINT, jasperPrint);
//        exporter.setParameter(JRXlsExporterParameter.OUTPUT_STREAM, outputStream);
//        exporter.exportReport();

        JRXlsxExporter exporter = new JRXlsxExporter();
        exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
        exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(outputStream));

        exporter.exportReport();
    }
}
