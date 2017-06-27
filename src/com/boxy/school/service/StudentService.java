package com.boxy.school.service;

import com.bosic.tools.service.GenericService;
import com.bosic.tools.service.PagedList;
import com.boxy.school.bean.Student;

public interface StudentService extends GenericService<Student, Integer>{
	public PagedList<Student> findPage(int pageIndex, int pageSize, String searchText);
}
