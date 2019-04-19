package com.dxc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.dxc.dao.IUserDao;
import com.dxc.factory.SQLHelperFactory;
import com.dxc.model.User;


public class UserDao implements IUserDao {

	public List<User> getAllUser() {
		List<User> users = new ArrayList<User>();
		StringBuilder sqlString = new StringBuilder();
		sqlString.append("SELECT * FROM webservice.user");

		Connection conn = SQLHelperFactory.connect();
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.prepareStatement(sqlString.toString());
			rs = stmt.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getString("Id"));
				user.setName(rs.getString("Name"));
				user.setBirthday(rs.getDate("Birthday"));
				user.setGender(rs.getBoolean("Gender"));
				user.setAddress(rs.getString("Address"));
				user.setIdentityCard(rs.getInt("IdentityCard"));
				user.setCellPhone(rs.getString("CellPhone"));
				user.setEmail(rs.getString("Email"));
				user.setNationality(rs.getString("Nationality"));
				user.setJob(rs.getString("Job"));

				users.add(user);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
		return users;
	}

	public User getById(String id) {
		User user = null;
		Connection conn = SQLHelperFactory.connect();
		String sqlString = "SELECT * FROM webservice.user WHERE Id = ?";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.prepareStatement(sqlString.toString());
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getString("Id"));
				user.setName(rs.getString("Name"));
				user.setBirthday(rs.getDate("Birthday"));
				user.setGender(rs.getBoolean("Gender"));
				user.setAddress(rs.getString("Address"));
				user.setIdentityCard(rs.getInt("IdentityCard"));
				user.setCellPhone(rs.getString("CellPhone"));
				user.setEmail(rs.getString("Email"));
				user.setNationality(rs.getString("Nationality"));
				user.setJob(rs.getString("Job"));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}finally{
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
		return user;
	}

	public void insertUser(User user) {
		String tableSQL = "INSERT INTO webservice.user (Id, Name, Birthday, Gender, Address, IdentityCard, CellPhone, Email, Nationality, Job)"
				+ "VALUES(?,?,?,?,?,?,?,?,?,?)";

		Connection conn = SQLHelperFactory.connect();
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = conn.prepareStatement(tableSQL);
			preparedStatement.setString(1, user.getId());
			preparedStatement.setString(2, user.getName());
			java.util.Date sqlDate = user.getBirthday();
			new SimpleDateFormat("yyyy-MM-dd").format(sqlDate);
			java.sql.Date utilDate = new java.sql.Date(sqlDate.getTime());
			preparedStatement.setDate(3, utilDate);
			preparedStatement.setBoolean(4, user.getGender());
			preparedStatement.setString(5, user.getAddress());
			preparedStatement.setInt(6, user.getIdentityCard());
			preparedStatement.setString(7, user.getCellPhone());
			preparedStatement.setString(8, user.getEmail());
			preparedStatement.setString(9, user.getNationality());
			preparedStatement.setString(10, user.getJob());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

	public void updateUser(User user) {
		Connection conn = SQLHelperFactory.connect();
		String query = "UPDATE webservice.user SET Name=?, Birthday=?, Gender=?, Address=?, IdentityCard=?, CellPhone=?, Email=?, Nationality=?, Job=? where Id=?";
		PreparedStatement preparedStmt = null;
		try {
			preparedStmt = conn.prepareStatement(query);
			preparedStmt.setString(1, user.getName());
			java.util.Date sqlDate = user.getBirthday();
			new SimpleDateFormat("yyyy-MM-dd").format(sqlDate);
			java.sql.Date utilDate = new java.sql.Date(sqlDate.getTime());
			preparedStmt.setDate(2, utilDate);
			preparedStmt.setBoolean(3, user.getGender());
			preparedStmt.setString(4, user.getAddress());
			preparedStmt.setInt(5, user.getIdentityCard());
			preparedStmt.setString(6, user.getCellPhone());
			preparedStmt.setString(7, user.getEmail());
			preparedStmt.setString(8, user.getNationality());
			preparedStmt.setString(9, user.getJob());
			preparedStmt.setString(10, user.getId());
			preparedStmt.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (preparedStmt != null) {
					preparedStmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}
	
	public void deleteUser(String id) {
		Connection conn = SQLHelperFactory.connect();
		String query = "DELETE from webservice.user where Id=?";
		PreparedStatement preparedStmt = null;
		try {
			preparedStmt = conn.prepareStatement(query);
			preparedStmt.setString(1, id);
			preparedStmt.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (preparedStmt != null) {
					preparedStmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

}
