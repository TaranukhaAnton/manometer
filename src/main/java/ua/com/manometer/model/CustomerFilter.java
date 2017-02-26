package ua.com.manometer.model;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;

@Entity
@Table(name = "customer_filter")
public class CustomerFilter {
    @Id
    @Column(name = "id")
    private Integer id;

    @Type(type = "ua.com.manometer.util.IntegerListCustomType")
    private List<Integer> branches = new LinkedList<Integer>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Integer> getBranches() {
        return branches;
    }

    public void setBranches(List<Integer> branches) {
        this.branches = branches;
    }


}
