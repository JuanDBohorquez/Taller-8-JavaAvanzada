package co.edu.sena.projectjdb2687350.servlets;

import co.edu.sena.projectjdb2687350.model.Categories;
import co.edu.sena.projectjdb2687350.repository.CategoriesRepositoryImpl;
import co.edu.sena.projectjdb2687350.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register-categories")
public class RegistreCategoriesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category_name = request.getParameter("category_name");


        Categories categories = new Categories();


        Repository<Categories> repository = new CategoriesRepositoryImpl();
        int rows = 0;
        try {
            rows = repository.saveObj(categories);
        }catch (SQLException e){
            e.printStackTrace();
        }

        if (rows == 0){
            System.out.println("Ocurrio un error!");
        }else {System.out.println("...");}

    }

}
