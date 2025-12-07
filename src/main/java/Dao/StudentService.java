package Dao;

import entity.Student;
import entity.UserLogin;
import jakarta.persistence.*;
import jakarta.servlet.http.HttpSession;

import java.util.List;


public class StudentService implements StudentImpl {
    @Override
    public void addStudent(Student student) {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();

        em.persist(student);
        t.commit();
        em.close();

    }

    @Override
    public Student getStudent(Integer id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();
        Student student = em.find(Student.class, id);

        return student;

    }

    @Override
    public void updateStudent(Student student) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();

        em.merge(student);
        t.commit();
        em.close();


    }

    @Override
    public void deleteStudent(Integer id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();
        Student student = em.find(Student.class, id);

        if (student != null) {
            em.remove(student);
        }
        t.commit();
        em.close();


    }


    public UserLogin loginuser(String name, String password) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();

        TypedQuery<UserLogin> query = em.createQuery(
                "SELECT u FROM UserLogin u WHERE u.name = :name AND u.password = :password",
                UserLogin.class
        );

        query.setParameter("name", name);
        query.setParameter("password", password);

        List<UserLogin> list = query.getResultList();

        if (!list.isEmpty()) {
            UserLogin user = list.get(0);
            return user;

        } else {
            return null;
        }

    }

    public void registerServlet(Integer id ,String name, String password, String role) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();

        UserLogin u = new UserLogin(id,name, password,role);

        em.persist(u);
        t.commit();
        em.close();




    }

    public List<Student> getALlStudent() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        TypedQuery<Student> query = em.createQuery("SELECT s FROM Student s", Student.class);

        List<Student> studentList = query.getResultList();

        return  studentList;



    }
}


