package co.edu.sena.projectjdb2687350.repository;

import co.edu.sena.projectjdb2687350.model.Products;
import co.edu.sena.projectjdb2687350.model.User;
import co.edu.sena.projectjdb2687350.util.ConnectionPool;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductsRepositoryImpl implements Repository<Products> {

    private String sql = null;

    @Override
    public List<Products> listAllObj() throws SQLException {
        sql = "select p.product_id, p.product_name, p.product_value, p.category_id_fk " +
                "from products p order by p.product_name, p.product_value";
        List<Products> products = new ArrayList<>();
        try (Connection conn = ConnectionPool.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Products p = createObj(rs);
                products.add(p);
            }
        }
        return products;
    }

    @Override
    public Products byIdObj(Integer id) throws SQLException {
        sql = "select p.product_id, p.product_name, p.product_value, p.category_id_fk " +
                "from products p where p.product_id = ?";
        Products products = null;
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    products = createObj(rs);
                }
            }
        }
        return products;
    }

    @Override
    public Integer saveObj(Products products) throws SQLException {

        int rowsAffected = 0;

        if (products.getProduct_id() != null && products.getProduct_id() > 0) {
            sql = "update products set product_name = ?, product_value = ?, category_id_fk = ?, " +
                    "where product_id = ?";
        } else {
            sql = "insert into products (product_name, product_value, category_id_fk) " +
                    " values(upper(?), upper(?), upper(?)) ";
;
        }

        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, products.getProduct_name());
            ps.setInt(2, products.getProduct_value());
            ps.setInt(3, products.getCategory_id_fk());
            if (products.getProduct_id() != null && products.getProduct_id() > 0) {
                ps.setInt(4, products.getProduct_id());
            }
            rowsAffected = ps.executeUpdate();
        }
        return rowsAffected;
    }

    @Override
    public void deleteObj(Integer id) throws SQLException {
        sql = "delete from products where product_id = ?";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }

    @Override
    public Products createObj(ResultSet rs) throws SQLException {
        Products products = new Products();
        products.setProduct_id(rs.getInt("product_id"));
        products.setProduct_name(rs.getString("product_name"));
        products.setProduct_value(rs.getInt("product_value"));
        products.setCategory_id_fk(rs.getInt("category_id_fk"));
        return products;
    }
}
