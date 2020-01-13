
package Models;

import org.springframework.validation.Errors;

import org.springframework.validation.Validator;



//Para crear nuestra clase ValidaMotor debemos implmentar la interface Validator que nos obliga a añadir sus métodos abstractos
public class validaMotor implements Validator{

    @Override
    public boolean supports(Class<?> type) {
       return Motor.class.isAssignableFrom(type);
    }

    
    //Este método nos valida el objeto que le pasemos al cual tenemos que hacer un downcasting y programar lo que queremos validar 
    // para así si tenemos un dato que no lo cumple nos saldrá un error que podremos enviar a la vista.
    @Override
    public void validate(Object o, Errors errors) {
        Motor m=(Motor)o;
        

        if (m.getModelo().length()!=5)
        {
            errors.rejectValue("modelo", "verificamodelo","El modelo debe contener 5 caracteres.");
        }
        if(m.getPotencia()<=0)
        {
            errors.rejectValue("potencia","verificapotencia","La potencia debe ser supeior a 0");
        }
        if(m.getPeso()<=0)
        {
            errors.rejectValue("peso","verificapeso","El peso debe ser supeior a 0");
        }
        if(m.getCantidad()<0)
        {
            errors.rejectValue("cantidad","verificacantidad","La cantidad debe ser postiva o 0");
        }
        
    }
   
   

    
}
