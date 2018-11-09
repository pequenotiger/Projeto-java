package prjQuitanda;

//importa as classes necessarias para trabalhar com bd
import java.sql.*;

public class Conexao {
    
    //cria uma conexao chamada con
   static Connection con;   

    //metodo responsavel para se conectar ao bd   
    public void conectar(){
         try{
           //para carregar o driver
           Class.forName("com.mysql.jdbc.Driver");

           //jdbc - e o driver da sun responsavel pela conexao
           //estabelece uma conexao 
           con = DriverManager.getConnection("jdbc:mysql://localhost/bdCallmargo","root","");

           //System.out.println("Conexão realizada com sucesso.");
         }
     
         catch(SQLException ex){
           //System.out.println("Problemas na conexão com o banco de dados."); 
         }

         catch(ClassNotFoundException ex){
           //System.out.println("Driver JDBC-ODBC não encontrado"); 
         }
    }

    public void desconectar(){
         try{
           //fecha a conexao
           con.close();
           //System.out.println("Conexao finalizada com sucesso");
         }

         catch(SQLException ex){
            //System.out.println("Problemas na conexão."); 
         }
    }         

    PreparedStatement PreparedStatement(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
