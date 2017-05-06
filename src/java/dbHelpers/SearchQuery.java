
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;

public class SearchQuery {
    private Connection conn;
    private ResultSet results;
    
    public SearchQuery(){
      
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void doSearch (String firstName, String lastName){
        
        try {
            String query = "SELECT * FROM Customers WHERE UPPER(firstName) LIKE ? OR UPPER (LastName) LIKE ? ORDER BY custID ASC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + firstName.toUpperCase() + "%");
            ps.setString(2, "%" + lastName.toUpperCase() + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLTable(){
        
        String table = "";
        
        table += "<table>";
        
        table += "<tr>";

            table += "<th>";
            table += "ID"; 
            table += "</th>";
                
            table += "<th>";
            table += "Name";
            table += "</th>";
                
            table += "<th>";
            table += "Address 1";
            table += "</th>";

            table += "<th>";
            table += "Address 2";
            table += "</th>";

            table += "<th>";
            table += "City";
            table += "</th>";

            table += "<th>";
            table += "State";
            table += "</th>";

            table += "<th>";
            table += "Zip Code";
            table += "</th>";

            table += "<th>";
            table += "Email Address";
            table += "</th>";
            
            table += "<th>";
            table += "Update/Delete";
            table += "</th>";
            
        table += "</tr>";
        
        try {
            while(this.results.next()){
                
                Customers customer = new Customers();
                customer.setCustID(this.results.getInt("custID"));
                customer.setFirstName(this.results.getString("firstName"));
                customer.setLastName(this.results.getString("lastName"));
                customer.setAddrOne(this.results.getString("addrOne"));
                customer.setAddrTwo(this.results.getString("addrTwo"));
                customer.setCity(this.results.getString("city"));
                customer.setState(this.results.getString("state"));
                customer.setZip(this.results.getString("zip"));
                customer.setEmailAddr(this.results.getString("emailAddr"));

            
                table += "<tr>";               
                
                    table += "<td>";
                    table += customer.getCustID();
                    table += "</td>";

                    table += "<td>";
                    table += customer.getFirstName();
                    table += " ";
                    table += customer.getLastName();
                    table += "</td>";

                    table += "<td>";
                    table += customer.getAddrOne();
                    table += "</td>";

                    table += "<td>";
                    table += customer.getAddrTwo();
                    table += "</td>";               

                    table += "<td>";
                    table += customer.getCity();
                    table += "</td>";              

                    table += "<td>";
                    table += customer.getState();
                    table += "</td>";

                    table += "<td>";
                    table += customer.getZip();
                    table += "</td>";

                    table += "<td>";
                    table += customer.getEmailAddr();
                    table += "</td>";

                    table += "<td>";
                    table += "<a href=update?custID=" + customer.getCustID()+ "> Update </a>" + "<a href=delete?custID=" + customer.getCustID() + "> Delete </a>";
                    table += "</td>";
                    
                table += "</tr>";                                                                         
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
            table += "</table>";
            return table;            
    }
}
