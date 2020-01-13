
package Models;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

//Creamos la clase Conectar para que podamos interactuar con la Base de Datos que hemos llamado motorland
// para ello añadimos al archivo pom.xml la dependencial de mysql necesaria.
public class Conectar {
    public DriverManagerDataSource conectar()
    {
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost/motorland");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
        
    }
}
