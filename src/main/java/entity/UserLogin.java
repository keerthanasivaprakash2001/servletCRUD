package entity;

import jakarta.persistence.*;

    @Entity
    @Table(name = "userLogin")
    public class UserLogin {

        @Id

        private int id;

        private String name;

        private String password;

        private String role; // Admin/User

        public UserLogin(int id, String name, String password, String role) {
            this.id = id;
            this.name = name;
            this.password = password;
            this.role = role;
        }

        public UserLogin() {
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public String getRole() {
            return role;
        }

        public void setRole(String role) {
            this.role = role;
        }


    }



