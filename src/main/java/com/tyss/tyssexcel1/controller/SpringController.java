package com.tyss.tyssexcel1.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Sheet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tyss.tyssexcel1.poi.ReadingExcel;

@Controller
@RequestMapping("/java")
public class SpringController {
	@Autowired
	private ReadingExcel excel;

	@Autowired
	HttpServletRequest req;

	@GetMapping("/test")
	public String getData(Model model) throws EncryptedDocumentException, InvalidFormatException, IOException {
		System.out.println(req.getServletContext().getResource("/Dummy.xlsx").getPath());
		Sheet sheet = excel.getExcelData(req.getServletContext().getResource("/Dummy.xlsx").getPath());
		model.addAttribute("sheet", sheet);
		return "excel";
	}
}
