package co.edu.sena.projectjdb2687350.servlets;

import co.edu.sena.projectjdb2687350.model.Products;
import co.edu.sena.projectjdb2687350.repository.ProductsRepositoryImpl;
import co.edu.sena.projectjdb2687350.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register-products")
public class RegistreProductsServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_name = request.getParameter("product_name");
        Integer product_value = Integer.valueOf(request.getParameter("product_value"));
        Integer category_id_fk = Integer.valueOf(request.getParameter("category_id_fk"));

        Products products = new Products(product_name,product_value,category_id_fk);

        Repository<Products> repository = new ProductsRepositoryImpl();
        int rows = 0;
        try {
            rows = repository.saveObj(products);
        }catch (SQLException e){
            e.printStackTrace();
        }

        if (rows == 0){
            System.out.println("Ocurrio un error!");
        }else {System.out.println("...");}

    }

}
