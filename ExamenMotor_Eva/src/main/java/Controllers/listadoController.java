
package Controllers;
import Models.*;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class listadoController {
    private JdbcTemplate jdbcTemplate;
    
    public listadoController()
     {
         Conectar con=new Conectar();
         this.jdbcTemplate=new JdbcTemplate(con.conectar());
     }
    @RequestMapping("listado.htm")
    public ModelAndView home(HttpServletRequest request)
    {
        String opc=request.getParameter("opcion");
        ModelAndView mav=new ModelAndView();
        String sql="select * from motores";
        List motores=this.jdbcTemplate.queryForList(sql);
        switch (opc)
        {
            
            case "1":mav.addObject("cartel","<p class='alert alert-success'>Alta realizada</p>");
            break;
            
            default:break;
        }
       
        mav.addObject("motores",motores);
        mav.setViewName("listado");
        return mav;
    }
}
