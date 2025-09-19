package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.ResvationDTO;
import util.DBUtil;

public class BadmintonDao {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void insertReservation(ResvationDTO resvDto) {
        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO tbl_shop VALUES(?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, resvDto.getgiftnim());
            pstmt.setString(2, resvDto.getCustNo());
            pstmt.setString(3, resvDto.getpay());
            pstmt.setString(4, resvDto.getrequests());
            
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
           DBUtil.close(conn, pstmt, null);
        }
    }
	
	public List<ResvationDTO> selectReservation() {
		List<ResvationDTO> list = new ArrayList<>();
		 try {
	            conn = DBUtil.getConnection();
	            String sql = "SELECT * from tbl_shop";
	            pstmt = conn.prepareStatement(sql);
	            rs = pstmt.executeQuery();
	            
	            while(rs.next()) {
	            	ResvationDTO rDto = new ResvationDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
	            	list.add(rDto);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	           DBUtil.close(conn, pstmt, rs);
	        }
		
		return list;
	}
}