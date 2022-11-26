package jdbc;
import java.util.Scanner;
import java.sql.*;
public class Dept
{
 public static void main(String args[])
 {
 Scanner sc=new Scanner(System.in);
 String dname=sc.nextLine();
 try
 {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.1.100.120:1521:xe","stu1914120","stu1914121");
 System.out.println("---To display details---");
 PreparedStatement stmt=con.prepareStatement("SELECT deptid, deptname, facultyid FROM department");
 ResultSet rs=stmt.executeQuery();
 while(rs.next())
 {
 System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
 }
 System.out.println("---To display record based on name---");
 PreparedStatement stmt1=con.prepareStatement("SELECT * FROM department WHERE deptname=?");
 stmt1.setString(1,dname);
 ResultSet rs1=stmt1.executeQuery();
 while(rs1.next())
 {
 System.out.println(rs1.getInt(1)+" "+rs1.getString(2)+" "+rs1.getInt(3));
 }
 con.close();
 }
 catch(Exception e)
 {
 System.out.print(e);
 }
 }
}