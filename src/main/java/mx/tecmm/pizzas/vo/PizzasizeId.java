package mx.tecmm.pizzas.vo;
// Generated 9/05/2018 09:30:54 PM by Hibernate Tools 4.3.1



/**
 * PizzasizeId generated by hbm2java
 */
public class PizzasizeId  implements java.io.Serializable {


     private int pizzaId;
     private int sizeId;

    public PizzasizeId() {
    }

    public PizzasizeId(int pizzaId, int sizeId) {
       this.pizzaId = pizzaId;
       this.sizeId = sizeId;
    }
   
    public int getPizzaId() {
        return this.pizzaId;
    }
    
    public void setPizzaId(int pizzaId) {
        this.pizzaId = pizzaId;
    }
    public int getSizeId() {
        return this.sizeId;
    }
    
    public void setSizeId(int sizeId) {
        this.sizeId = sizeId;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof PizzasizeId) ) return false;
		 PizzasizeId castOther = ( PizzasizeId ) other; 
         
		 return (this.getPizzaId()==castOther.getPizzaId())
 && (this.getSizeId()==castOther.getSizeId());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getPizzaId();
         result = 37 * result + this.getSizeId();
         return result;
   }   


}


