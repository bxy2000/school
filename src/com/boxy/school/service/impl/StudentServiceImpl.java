package com.boxy.school.service.impl;

import com.bosic.tools.service.PagedList;
import com.bosic.tools.service.impl.GenericServiceImpl;
import com.bosic.tools.util.StringUtil;
import com.boxy.school.bean.Student;
import com.boxy.school.dao.impl.StudentDaoImpl;
import com.boxy.school.service.StudentService;

public class StudentServiceImpl extends GenericServiceImpl<Student, Integer> implements StudentService{
	public StudentServiceImpl(){
		super(new StudentDaoImpl());
	}

	@Override
	public PagedList<Student> findPage(int pageIndex, int pageSize,
			String searchText) {
		PagedList<Student> result = null;
		if (StringUtil.isEmpty(searchText)) {
			result = findPage(pageIndex, pageSize);
		} else {
			result = findPage(pageIndex, pageSize, " where student_name like ? ", "", "%" + searchText + "%");
		}
		return result;
	}
}
