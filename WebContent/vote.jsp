<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Voting App-Vote</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>

<script>
	alert("Right To Vote");
	alert("Input Your Credential");
</script>

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
                			<td><a class="menu" href="#">Vote</a></td>
                			<td><a class="menu" href="result.jsp">Result</a></td>
                		</tr>
                	</table>
                </div><hr>
        <div class="middle">
            <div class="midHeading">
                <h2>Lok Sabha Election 2023</h2>
                <h2>Vote Here</h2>
            </div>
            <div class="pageContent">
            	<form action="/VotingSystem/Vote" method="post">
            		<table class="Vtable">
            			<tr><td>Name:-</td><td><input type="text" name="name" required></td></tr>
            			<tr><td>Location:-</td><td><input type="text" name="location" required></td></tr>
            			<tr><td>BJP:-</td><td><input type="radio" name="vote" value="BJP" required></td></tr>
            			<tr><td>Congress:-</td><td><input type="radio" name="vote" value="Congress" required></td></tr>
            			<tr><td>Other:-</td><td><input type="radio" name="vote" value="Other" required></td></tr>
            			<tr class="submit"><td colspan="2"><input type="submit" value="Vote" ></td></tr>
            		</table>
            	</form>
            </div>
        </div>
        <hr>
        <div class="footer">
            <div class="footing">
                <p>Copyright@praveen.com</p>
            </div>
        </div>
    </div>
</body>
</html>