package co.edu.sena.projectjdb2687350.repository;

import co.edu.sena.projectjdb2687350.model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {

    public static void main(String[] args) throws SQLException {
        Repository<User> repository = new UserRepositoryImpl();

        System.out.println("========== saveObj Insert ==========");  //insert

        User userInsert = new User();
        userInsert.setUser_firstname("albajadmamad");
        userInsert.setUser_lastname("alsubidlaved");
        userInsert.setUser_email("elpepe@gmail.com");
        userInsert.setUser_password("$2a$12$te.VG/zjMUZ6D6W4bR9Lru7HwpygZ/ZGG2SAnRqUWxmuEvlFo4SLa");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("elver");
        userInsert.setUser_lastname("galarga");
        userInsert.setUser_email("yuco@gmail.com");
        userInsert.setUser_password("$2a$12$PI61GJCDQgQuoR4G21Y7W.Pn9Rfqyb4IYnqGRVb89B/MVdvhPEK8m");
        repository.saveObj(userInsert);

        System.out.println("========== listAllObj ==========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ==========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("========== saveObj =========="); //update
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("sevino");
        userUpdate.setUser_lastname("sobreti");
        userUpdate.setUser_email("italiano@gmail.com");
        userUpdate.setUser_password("$2a$12$wkq.DdF8Iq90yhHLCwRQg.O4it6jbQmbixenLmVRZsVT3qm.YV7j.");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj ==========");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    }
}
