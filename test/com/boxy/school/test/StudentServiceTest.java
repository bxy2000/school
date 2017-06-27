package com.boxy.school.test;

import java.util.List;

import org.junit.Test;

import com.boxy.school.bean.Student;
import com.boxy.school.service.StudentService;
import com.boxy.school.service.impl.StudentServiceImpl;

public class StudentServiceTest {
	@Test
	public void findAll(){
		StudentService service = new StudentServiceImpl();
		
		List<Student> students = service.findAll();
		
		students.forEach(s->System.out.println(s));
	}
}
