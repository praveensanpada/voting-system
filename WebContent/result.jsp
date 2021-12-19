<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Voting App-Result</title>
<link rel="stylesheet" type="text/css" href="main.css">

<style>
	.result table,.result th,.result td{
	border: 1px solid black;
	border-collapse: collapse;
	}
	
	.result table{
		width:60%
	}
</style>

</head>
<body>
	<div class="main">
        <div class="header"><br>
            <div class="heading">
                <h1>Online Voting App</h1>
            </div>
        </div>
        <br><hr>
        <div class="menu">
                	<table class="Itable">
                		<tr>
                			<td><a class="menu" href="index.jsp">Home</a></td>
                			<td><a class="menu" href="contact.jsp">Contact Us</a></td>
                			<td><a class="menu" href="about.jsp">About Us</a></td>
                			<td><a class="menu" href="vote.jsp">Vote</a></td>
                			<td><a class="menu" href="#">Result</a></td>
                		</tr>
                	</table>
                </div><hr>
        <div class="middle">
            <div class="midHeading">
                <h2>Lok Sabha Election 2023</h2>
            </div>
            <div class="pageContent">
            	<div>
            		<h2 class="res">Result</h2>
            	</div>
            	<div class="result">
					<table class="final">
					<tr><th>SNO.</th><th>Name</th><th>Location</th><th>Vote</th></tr>
            	<%
		
				String dr="com.mysql.jdbc.Driver";
				String du="jdbc:mysql://localhost:3306/voting";
				String dur="root";
				String dp="";
		
				Class.forName(dr);
				Connection conn = DriverManager.getConnection(du,dur,dp);
		
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM election");
				String name,location,vote,s1="BJP",s2="Congress";
				int id=0,bjp=0,cng=0,oth=0;
				while(rs.next()){
					id++;
					name=rs.getString("name");
					location=rs.getString("location");
					vote=rs.getString("vote");
					if(s1.equals(vote)){
						bjp++;
					}else if(s2.equals(vote)){
						cng++;
					}else{
						oth++;
					}
					
				%>
		
				
						<tr><td><%out.print(id); %></td><td><%out.print(name); %></td><td><%out.print(location); %></td><td><%out.print(vote); %></td></tr>
			
		
				<% 
				}
					String Set;
					if((bjp>cng)&&(bjp>oth) || (bjp==cng)|| (bjp==oth)){
						Set="BJP Won !!!";
					}else if((cng>bjp)&&(cng>oth) || (cng==oth)){
						Set="Congress Won !!!";
					}else{
						Set="Other Won !!!";
					}
					
		 		%>
		 		
		 		
		 			<tr><td colspan="4">Final Result</td></tr>
		 			<tr><td colspan="2">BJP:-</td><td colspan="2"><%out.print(bjp); %></td></tr>
		 			<tr><td colspan="2">Congress:-</td><td colspan="2"><%out.print(cng); %></td></tr>
		 			<tr><td colspan="2">Other:-</td><td colspan="2"><%out.print(oth); %></td></tr>
		 			<tr><td colspan="4"><%out.print(Set); %></td></tr>
				 </table>
			</div>
            
            </div>
        </div><br><br>
        <hr>
        <div class="footer">
            <div class="footing">
                <p>Copyright@praveen.com</p>
            </div>
        </div>
    </div>
</body>
</html>