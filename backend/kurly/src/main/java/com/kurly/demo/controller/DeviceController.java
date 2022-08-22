package com.kurly.demo.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_USING;
import com.kurly.demo.service.DeviceService;

@Controller
@RequestMapping("/device")
public class DeviceController {
	
	@Autowired
	DeviceService deviceService;
	
	@GetMapping("/page")
	public String goDevice(Model model, HttpSession session) {
		String user_id = session.getAttribute("EMP_ID").toString();
		List<TB_LO_DEVICE> list = deviceService.selectAll();
		TB_LO_USING dto = deviceService.selectInUse(user_id);
		
		model.addAttribute("list", list);
		model.addAttribute("dto", dto);
		return "device";
	}
	
	@GetMapping("/detail")
	public String goDetail(TB_LO_DEVICE dto, Model model) {
		String id = dto.getDEV_ID();
		
		List<TB_LO_USING> list = deviceService.selectHist(id);
		Collections.reverse(list);
		
		model.addAttribute("list", list);
		return "deviceDetail";
	}
	
	@GetMapping("/returndev")
	public String returnDevice(HttpSession session) {
		String user_id = session.getAttribute("EMP_ID").toString();
		TB_LO_USING dto = deviceService.selectInUse(user_id);
		String dev_id = dto.getDEV_ID();
		
		// TB_LO_DEVICE 단말기상태 이용가능으로 변경
		TB_LO_DEVICE tmp = new TB_LO_DEVICE();
		tmp.setDEV_ID(dev_id);
		tmp.setDEV_STAT("이용가능");
		deviceService.updateStatus(tmp);

		// TB_LO_USING 이용상태 이용완료로 변경 및 반납일시 처리
		deviceService.returnDevice(dto);
		
		return "redirect:/device/page";
	}
	
	@GetMapping("/rental")
	public String rentalDevice(TB_LO_DEVICE dto) {
		System.out.println(dto.getDEV_ID());
		return "redirect:/device/page";
	}
	
}
