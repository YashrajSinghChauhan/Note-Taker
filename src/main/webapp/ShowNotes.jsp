<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import=" org.hibernate.Query.*"%>
<%@page import="com.helper.*"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="All_js_css.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<%@include file="Navbar.jsp"%>
		<br>
		<h1>Show ALL Notes</h1>
		</div>
		<div class="container">
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				org.hibernate.Query q = s.createQuery("from Note");
				List<Note> lis = q.list();
				for (Note note : lis) {
				%>
				<div class="card mt-3 ">
					<img class="card-img-top p-4" src="img/notes.png"
						style="max-width: 100px;" alt="Card image cap">
					<div class="card-body text-danger">
						<h6 class="card">
						<b>	Date :<%=note.getAddedDate()%>
						</b></h6>
						<h5 class="card-title style="color:black;">
							<%=note.getTitle()%>
						</h5>
						<p class="card-text">
							<%=note.getContent()%>
						</p>
						<div class="container text-center">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="Edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>	
			</div>
		</div>
	</div>
</body>
</html>