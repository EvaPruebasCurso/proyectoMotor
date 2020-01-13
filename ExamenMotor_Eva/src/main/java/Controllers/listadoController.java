
package Controllers;
import Models.*;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

//Añadimos una anotación para indicar esta clase de Java es un Controlador
@Controller
//En esta clase necesitamos una propiedad JdbcTemplate, para poder trabajar con objetos a partir del mapeo de la base de datos
// por ello podemos crear una lista de objetos Motor al hacer nuestra consulta sql
public class listadoController {
    private JdbcTemplate jdbcTemplate;
    
    public listadoController()
     {
         Conectar con=new Conectar();
         this.jdbcTemplate=new JdbcTemplate(con.conectar()); //Primero la conectamos con la base de datos en el Constructor
     }
    @RequestMapping("listado.htm")
    public ModelAndView home(HttpServletRequest request)
    {
        //Hacemos un parámetro opción para que nos envíe un mensaje de confirmación si hemos realizado la actividad correspondiente
        // en nuestro caso el alta solo, pero podemos añadir más si es para eliminar o modificar
        String opc=request.getParameter("opcion");
        ModelAndView mav=new ModelAndView();
        String sql="select * from motores";
        List motores=this.jdbcTemplate.queryForList(sql); //Al realizar la consulta gracias al jdbTemplate logramos obtener una lista de nuestros objetos
        switch (opc)
        {
            
            case "1":mav.addObject("cartel","<p class='alert alert-success'>Alta realizada</p>"); //Este es el cartel que mandamos para confirmar el alta
            break;
            
            default:break;
        }
        
       //Entonces a la vista le envíamos la lista de los objetos motor 
        mav.addObject("motores",motores);
        mav.setViewName("listado");
        return mav;
    }
    
}
