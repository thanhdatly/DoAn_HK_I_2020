package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.ITestDAO;
import com.javaweb.mapper.TestMapper;
import com.javaweb.model.TestModel;

public class TestDAO extends AbstractDAO<TestModel> implements ITestDAO {

	@Override
	public List<TestModel> findAll(Long classId) {
		String sql = "SELECT * FROM test WHERE classid = ?";
		return query(sql, new TestMapper(), classId);
	}

	
}
