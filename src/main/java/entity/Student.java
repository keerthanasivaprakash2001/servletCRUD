package entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student {
    @Id
    Integer studdid;

    String studname;
     String dept;

    public Student( Integer studdid,String studname, String dept) {
        this.studdid=studdid;
        this.studname = studname;
        this.dept = dept;
    }

    public Student() {

    }

    public Integer getStuddid() {
        return studdid;
    }

    public void setStuddid(Integer studdid) {
        this.studdid = studdid;
    }

    public String getStudname() {
        return studname;
    }

    public void setStudname(String studname) {
        this.studname = studname;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    @Override
    public String toString() {
        return "Student{" +
                "studdid=" + studdid +
                ", studname='" + studname + '\'' +
                ", dept='" + dept + '\'' +
                '}';
    }
}
