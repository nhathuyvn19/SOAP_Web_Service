package com.dxc.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MYSQLDAOHeplperImpl implements SQLHelper {

	private static final Logger LOGGER = LoggerFactory.getLogger(MYSQLDAOHeplperImpl.class);

	public Connection getConnection() {
		Config config = new Config();
		Connection conn = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String urlString = "jdbc:mysql://" + config.getServer() + ":" + config.getPort() + "/" + config.getDatabase();
			conn =  DriverManager.getConnection(urlString, config.getUserId(), config.getPassword());
		}catch (Exception e) {
			LOGGER.info("Error:" + e.getMessage());
		}
		return conn;
	}

}
