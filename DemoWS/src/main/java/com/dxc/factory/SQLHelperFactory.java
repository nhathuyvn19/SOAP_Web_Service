package com.dxc.factory;

import java.sql.Connection;

public class SQLHelperFactory {

	public static SQLHelper sqlHelper = null;

	public SQLHelperFactory() {

	}
	
	public static Connection connect(){
		Config config = new Config();
		sqlHelper = new MYSQLDAOHeplperImpl();
		Connection connection = sqlHelper.getConnection();
		return connection;
	}
}
