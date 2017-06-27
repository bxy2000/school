package com.boxy.school.web.controller;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import com.bosic.tools.service.PagedList;
import com.bosic.tools.web.Controller;
import com.boxy.school.bean.Student;
import com.boxy.school.service.StudentService;
import com.boxy.school.service.impl.StudentServiceImpl;

@WebServlet(name = "student", urlPatterns = { "/student/*" })
public class StudentController extends Controller {
	private static final long serialVersionUID = 1L;

	private StudentService studentService = new StudentServiceImpl();

	public void index() throws Exception {
		// 1、获取参数
		int pageSize = 25;
		int pageIndex = id == ""? 1: Integer.parseInt(id);
		
		String searchText = getParameter("word", "");
		searchText = URLDecoder.decode(searchText, "UTF-8");
		// 2、处理业务逻辑
		PagedList<Student> students = studentService.findPage(pageIndex, pageSize, searchText);
		request.setAttribute("model", students);

		// 3、转发
		forward("index");
	}

	public void create() throws Exception {
		forward("create");
	}

	public void edit() throws Exception {
		int stuId = "".equals(id) ? 0 : Integer.parseInt(id);

		Student student = studentService.find(stuId);

		request.setAttribute("model", student);

		forward("edit");
	}

	public void save() throws Exception {
		Student student = (Student) getModel(Student.class);

		if (student.getId() == 0) {
			studentService.add(student);
		} else {
			studentService.update(student);
		}

		redirect("index");
	}

	public void delete() throws Exception {
		int stuId = "".equals(id) ? 0 : Integer.parseInt(id);

		studentService.delete(stuId);

		redirect("index");
	}

	// 批量删除
	public void batdelete() throws Exception {
		String[] ids = request.getParameterValues("checkit");

		if (ids != null) {
			List<Integer> allId = new ArrayList<>();

			for (String id : ids) {
				allId.add(Integer.parseInt(id));
			}

			studentService.delete(allId.toArray(new Integer[allId.size()]));
		}
		redirect("index");
	}
}
