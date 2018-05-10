package mx.tecmm.pizzas.vo;
// Generated 9/05/2018 09:30:54 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Account generated by hbm2java
 */
public class Account  implements java.io.Serializable {


     private Integer id;
     private Role role;
     private String email;
     private String password;
     private boolean status;
     private Set users = new HashSet(0);

    public Account() {
    }

	
    public Account(Role role, String email, String password, boolean status) {
        this.role = role;
        this.email = email;
        this.password = password;
        this.status = status;
    }
    public Account(Role role, String email, String password, boolean status, Set users) {
       this.role = role;
       this.email = email;
       this.password = password;
       this.status = status;
       this.users = users;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Role getRole() {
        return this.role;
    }
    
    public void setRole(Role role) {
        this.role = role;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean isStatus() {
        return this.status;
    }
    
    public void setStatus(boolean status) {
        this.status = status;
    }
    public Set getUsers() {
        return this.users;
    }
    
    public void setUsers(Set users) {
        this.users = users;
    }




}


