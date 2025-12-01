package Dao;

import entity.Student;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;


public class StudentService implements StudentImpl{
    @Override
    public  void addStudent(Student student ) {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();

        em.persist(student);
        t.commit();
        em.close();

    }

    @Override
    public Student getAllStudent(Integer id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();
        Student student = em.find(Student.class, id);

        return student;

    }

    @Override
    public void updateStudent(Student student ) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();

       em.merge(student);
        t.commit();
        em.close();


    }

    @Override
    public void deleteStudent(Integer id ) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("emp-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction t = em.getTransaction();
        t.begin();
        Student student = em.find(Student.class, id);
        em.remove(student);
        t.commit();
        em.close();


    }
}
