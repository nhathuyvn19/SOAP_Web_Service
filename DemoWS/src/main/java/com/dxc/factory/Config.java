package com.dxc.factory;

import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.Logger;

public class Config {

	private static Logger logger = Logger.getLogger(Config.class);
	private String driver;
	private String server;
	private String database;
	private String port;
	private String userId;
	private String password;

	private Properties loadConfiguration() {
		Properties props = new Properties();
		try {
			props.load(Config.class.getClassLoader().getResourceAsStream("QuipozCfg.properties"));
		} catch (IOException e) {
			logger.error("Error occurs when attempting to load the resource file.", e);
		}

		return props;

	}

	public Config() {
		Properties props = loadConfiguration();
		setDriver(props.getProperty("connection.driver"));
		setServer(props.getProperty("connection.server"));
		setPort(props.getProperty("connection.port"));
		setDatabase(props.getProperty("connection.database"));
		setUserId(props.getProperty("connection.username"));
		setPassword(props.getProperty("connection.password"));
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getServer() {
		return server;
	}

	public void setServer(String server) {
		this.server = server;
	}

	public String getDatabase() {
		return database;
	}

	public void setDatabase(String database) {
		this.database = database;
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
