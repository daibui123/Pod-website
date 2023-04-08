/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import untils.Account;
import untils.Category;
import untils.Product;
import utils.DBHelper;

/**
 *
 * @author Acer
 */
public class DAO {

    private List<Account> accounts;

    public boolean checkLogin(String username, String password)
            throws SQLException, ClassNotFoundException {
        Connection conn = null;
        PreparedStatement stmm = null;
        ResultSet rss = null;
        try {
            //1. Connect DB
            conn = DBHelper.makeConnection();
            if (conn != null) {
                //2. Create SQL String
                String sql = "Select [user] "
                        + "FROM Account_HE163547 "
                        + "WHERE [user] = ? "
                        + "AND pass = ?";
                //3. Create Statement
                stmm = conn.prepareStatement(sql);
                stmm.setString(1, username);
                stmm.setString(2, password);
                //4. Excute Query
                rss = stmm.executeQuery();
                //5. Process Result
                if (rss.next()) {
                    return true;
                }
            }
        } finally {
            if (rss != null) {
                rss.close();
            }
            if (stmm != null) {
                stmm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return false;
    }
    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public Account login(String user, String pass) {
        String query = "select * from  Account_HE163547 where [user] = ? and pass = ? ";
        try {
            con = DBHelper.makeConnection();
            stm = con.prepareStatement(query);
            stm.setString(1, user);
            stm.setString(2, pass);
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account checkAccountExist(String email) {

        try {

            con = DBHelper.makeConnection();

            //2. Create SQL String
            String sql = "Select * from Account_HE163547 where email=?";
            //3. Create Statement
            stm = con.prepareStatement(sql);
            stm.setString(1, email);
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6));
            }

        } catch (Exception e) {
        }

        return null;

    }

    public List<Account> getAccounts() {
        return accounts;
    }

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();

        try {

            con = DBHelper.makeConnection();

            //2. Create SQL String
            String sql = "select*from product_HE163547";
            //3. Create Statement
            stm = con.prepareStatement(sql);

            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }

        return list;

    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();

        try {

            con = DBHelper.makeConnection();

            //2. Create SQL String
            String sql = "select*from Category_HE163547";
            //3. Create Statement
            stm = con.prepareStatement(sql);

            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }

        } catch (Exception e) {
        }

        return list;

    }

    public Product getLast() {
        String query = "select top 1 * from product_HE163547 order by id desc";
        try {
            con = DBHelper.makeConnection();

            //3. Create Statement
            stm = con.prepareStatement(query);

            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public int getTotalProduct() {
        String query = "select count(*) from product_HE163547";
        try {
            con = DBHelper.makeConnection();

            //3. Create Statement
            stm = con.prepareStatement(query);

            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public void signup(String user, String pass, String email) {
        String query = "insert into Account_HE163547\n"
                + "values(?, ?,0,0,?)";

        try {
            con = DBHelper.makeConnection();

            //3. Create Statement
            stm = con.prepareStatement(query);
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.setString(3, email);
            //4. Excute Query   
            stm.executeUpdate();
            //5. Process Result

        } catch (Exception e) {
        }
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select* from product_HE163547\n"
                + "order by id\n"
                + "offset ? rows fetch next 6 row only;";
        try {

            con = DBHelper.makeConnection();

            //3. Create Statement
            stm = con.prepareStatement(query);
            stm.setInt(1, (index - 1) * 3);

            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getAllProductByCID(String cid) {
        List<Product> list = new ArrayList<>();

        try {

            con = DBHelper.makeConnection();

            //2. Create SQL String
            String sql = "select * from product_HE163547 where cateID = ?";
            //3. Create Statement
            stm = con.prepareStatement(sql);
            stm.setString(1, cid);
            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product_HE163547 where [name] like ?";

        try {

            con = new DBHelper().makeConnection();

            //2. Create SQL String
            //3. Create Statement
            stm = con.prepareStatement(sql);
            stm.setString(1, "%" + txtSearch + "%");
            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }

        return list;

    }

    public Product getProductByID(String id) {

        try {

            con = DBHelper.makeConnection();

            //2. Create SQL String
            String sql = "select * from product_HE163547 where id = ?";
            //3. Create Statement
            stm = con.prepareStatement(sql);
            stm.setString(1, id);
            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }

        } catch (Exception e) {
        }

        return null;

    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE163547 where sell_ID = ?";
        try {

            con = DBHelper.makeConnection();

            //3. Create Statement
            stm = con.prepareStatement(query);
            stm.setInt(1, id);

            //4. Excute Query   
            rs = stm.executeQuery();
            //5. Process Result
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        Account p = dao.checkAccountExist("ducc@gmail.com");

        System.out.println(p);
    }

    public void deleteProduct(String pid) {
        String query = "delete from product_HE163547 where id = ?";

        try {
            con = DBHelper.makeConnection();

            //3. Create Statement
            stm = con.prepareStatement(query);
            stm.setString(1, pid);

            //4. Excute Query   0
            stm.executeQuery();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String image, String price,
            String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[product_HE163547] \n"
                + "([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            con = DBHelper.makeConnection();//mo ket noi voi sql
            stm = con.prepareStatement(query);
            stm.setString(1, name);
            stm.setString(2, image);
            stm.setString(3, price);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, category);
            stm.setInt(7, sid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price,
            String title, String description, String category, String pid) {
        String query = "update product_HE163547\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            con = DBHelper.makeConnection();//mo ket noi voi sql
            stm = con.prepareStatement(query);
            stm.setString(1, name);
            stm.setString(2, image);
            stm.setString(3, price);
            stm.setString(4, title);
            stm.setString(5, description);
            stm.setString(6, category);
            stm.setString(7, pid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
}
