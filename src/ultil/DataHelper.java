package ultil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataHelper {
	static String Driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	  static String ConnectionURL = "jdbc:sqlserver://localhost:1433"
	      + ";instance=SQLEXPRESS;databaseName=QLMP;";
	  static String userName = "vva";
	  static String passWord = "vanvananh285";
	  /**
	  * Method return connection database
	  * @throws 
	  * ClassNotFoundException 
	  * @throws 
	  * SQLException .
	  */
	  
	  public static Connection connect() throws ClassNotFoundException, SQLException {
	    //load driver
	    Class.forName(Driver);
	    //get connection
	    Connection cn = DriverManager.getConnection(ConnectionURL,userName,passWord);
	    return cn;
	  }
}
