package mx.tecmm.pizzas.vo;
// Generated 9/05/2018 09:30:54 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Role generated by hbm2java
 */
public class Role  implements java.io.Serializable {


     private Integer id;
     private Privileges privileges;
     private String roleName;
     private boolean status;
     private Set accounts = new HashSet(0);

    public Role() {
    }

	
    public Role(Privileges privileges, String roleName, boolean status) {
        this.privileges = privileges;
        this.roleName = roleName;
        this.status = status;
    }
    public Role(Privileges privileges, String roleName, boolean status, Set accounts) {
       this.privileges = privileges;
       this.roleName = roleName;
       this.status = status;
       this.accounts = accounts;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Privileges getPrivileges() {
        return this.privileges;
    }
    
    public void setPrivileges(Privileges privileges) {
        this.privileges = privileges;
    }
    public String getRoleName() {
        return this.roleName;
    }
    
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    public boolean isStatus() {
        return this.status;
    }
    
    public void setStatus(boolean status) {
        this.status = status;
    }
    public Set getAccounts() {
        return this.accounts;
    }
    
    public void setAccounts(Set accounts) {
        this.accounts = accounts;
    }




}


