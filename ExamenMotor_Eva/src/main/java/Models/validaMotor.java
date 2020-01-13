/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;




public class validaMotor implements Validator{

    @Override
    public boolean supports(Class<?> type) {
       return Motor.class.isAssignableFrom(type);
    }

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
            errors.rejectValue("peso","verificapeso","El peso debe ser supeior a 0");
        }
        
    }
   

    
}
