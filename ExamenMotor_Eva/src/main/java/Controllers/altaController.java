
package Controllers;

import Models.Conectar;
import Models.Motor;
import Models.validaMotor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


//Con las anotaciones indicamos que esta clase es un Controlador y que Mapea nuestra vista alta
@Controller
@RequestMapping("alta.htm")
//Esta clase va a tener dos propiedades para poder realizar los métodos necesarios:
//La propiedad jdbcTemplate para poder trabajar con objetos a partir del relleno de los formularios o que un objeto nos pueda llenar un formulario
public class altaController {
    private JdbcTemplate jdbcTemplate;
    private validaMotor validar;
    
    public altaController() 
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
        this.validar = new validaMotor();
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView alta()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("alta");
        mav.addObject("motor",new Motor());
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView alta
        (
                @ModelAttribute("motor") Motor m, BindingResult result
        )
    {
         this.validar.validate(m, result);//Le pasas un motor y unos resultados y nos dirá con otro método si hay errores o no
        if (result.hasErrors())//aquí compruebas si los resultados tras la validación tienen errores
        {
             ModelAndView mav=new ModelAndView();
            mav.setViewName("alta");
            mav.addObject("motor",new Motor());
            return mav;
        }
        else
        {
        this.jdbcTemplate.update //Aquí añade lo que hay en el formulario para crear el objeto motor que estaba vacío e ir añadiendo los datos nuevos
        (
        "insert into motores (modelo,fabricante,potencia,peso,cantidad) values (?,?,?,?,?)",
          m.getModelo(),m.getFabricante(),m.getPotencia(), m.getPeso(),m.getCantidad()); 
        //insertamos dicho objeto en la base de datos y redireccionamos al listado para ver de nuevo todos los motores que nos aparecen con el nuestro añadido
         return new ModelAndView("redirect:/listado.htm?opcion=1 ");
        }
    }
    
}
