package model.repository;

import model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<User> repository = new UserRepositoryImpl();

        System.out.println("========== saveObj Insert ==========");
        User userInsert = new User();
        userInsert.setUser_firstname("andres");
        userInsert.setUser_lastname("martinez");
        userInsert.setUser_email("andres555@gmail.com");
        userInsert.setUser_password("andresmartinez5752");
        repository.saveObj(userInsert);
        User userInsert2 = new User();
        userInsert2.setUser_firstname("gloria");
        userInsert2.setUser_lastname("castillo");
        userInsert2.setUser_email("casto5452@gmail.com");
        userInsert2.setUser_password("cadsti57");
        repository.saveObj(userInsert2);
        System.out.println("========== listAllObj ==========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ===========");
            System.out.println(repository.byIdObj(1));
            System.out.println();

            System.out.println("========== saveObj ==========");
            User userUpdate = new User();
            userUpdate.setUser_id(2);
            userUpdate.setUser_firstname("gloria");
            userUpdate.setUser_lastname("ruiz");
            userUpdate.setUser_email("ruiz454@gmail.com");
            userUpdate.setUser_password("florisdsadsad584");
            repository.listAllObj().forEach(System.out::println);
            System.out.println();

            System.out.println("========== deleteObj =========");
            repository.deleteObj(2);
            repository.listAllObj().forEach(System.out::println);
    }
}
