package com.tyss.tyssexcel1.controller;

import java.io.IOException;

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
@RequestMapping("/project")
public class SpringController {
	@Autowired
	private ReadingExcel excel;
	@GetMapping("/index")
	public String getData(Model model) throws EncryptedDocumentException, InvalidFormatException, IOException {
		Sheet sheet=excel.getExcelData();
		model.addAttribute("sheet", sheet);
		return "excel";
	}
}
