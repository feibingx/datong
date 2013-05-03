package com.zhiweiwang.datong.controller;


import org.junit.Test;

import com.zhiweiwang.datong.DTUtils;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

public class Md5Test {
	
	@Test
	public void should_md5(){
		
		assertThat(DTUtils.md5s("11111"), is("redirect:/message"));
	}
}