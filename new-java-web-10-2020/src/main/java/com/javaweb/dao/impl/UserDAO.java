package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.IUserDAO;
import com.javaweb.mapper.UserMapper;
import com.javaweb.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

	@Override
	public UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
		sql.append(" INNER JOIN role AS r ON r.id=u.roleid");
		sql.append(" WHERE username = ? and password = ? and status = ?");

		List<UserModel> user = query(sql.toString(), new UserMapper(), userName, password, status);
		return user.isEmpty() ? null : user.get(0);	
	}

	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM user";
		return query(sql,new UserMapper());
	}

}
