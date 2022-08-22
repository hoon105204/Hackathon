package com.kurly.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.demo.mapper.ARMapper;

@Service
public class ARServiceImpl implements ARService{

	@Autowired
	ARMapper arMapper;
	
}
