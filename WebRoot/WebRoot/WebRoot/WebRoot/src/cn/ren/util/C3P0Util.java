package cn.ren.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class C3P0Util {
    //ʹ��Ĭ������
//    private static ComboPooledDataSource dataSource = new ComboPooledDataSource();
    private static DataSource ds = new ComboPooledDataSource();
    //ʹ����������
//    private static ComboPooledDataSource dataSource = new ComboPooledDataSource("itheima");

    /**
     * �������Դ�����ӳأ�
     */
    public static DataSource getDataSource() {
        return ds;
    }

    /**
     * �������
     */
    public static Connection getConnection() throws SQLException {
        Connection conn = ds.getConnection();

        return conn;
    }

    public static void release(ResultSet rs, Statement stat) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stat != null) {
                stat.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}