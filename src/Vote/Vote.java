package Vote;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/Vote")
public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Vote() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String location=request.getParameter("location");
		String vote=request.getParameter("vote");
		
		try{
			String dr="com.mysql.jdbc.Driver";
			String du="jdbc:mysql://localhost:3306/voting";
			String dur="root";
			String dp="";
			
			Class.forName(dr);
			Connection conn = DriverManager.getConnection(du,dur,dp);
			
			PreparedStatement st = conn.prepareStatement("INSERT INTO election VALUES(?,?,?,?)");
			st.setInt(1, 0);
			st.setString(2, name);
			st.setString(3, location);
			st.setString(4, vote);
			st.executeUpdate();
			st.close();
			
		}catch(SQLException e ){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("result.jsp"); 
		
	}

}
