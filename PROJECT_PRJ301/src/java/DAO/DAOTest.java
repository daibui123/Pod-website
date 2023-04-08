package DAO;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class DAOTest {

    @org.junit.Test
    public void testCheckLogin() throws SQLException, ClassNotFoundException {
        DAO dao = new DAO();
        boolean result = dao.checkLogin("username", "password");
        assertTrue(result);
    }


    @org.junit.Test
    public void login() {
    }
}