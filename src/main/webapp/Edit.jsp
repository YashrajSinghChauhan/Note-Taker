<%@page import="com.entities.*"%>
<%@page import="com.helper.*"%>

<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.*"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="All_js_css.jsp"%>
<title>Note Taker | Edit Page</title>
</head>
<body>
	<div class="container-fluid">
		<%@include file="Navbar.jsp"%>
	</div>
	<div class="container">

		<%
		int noteid = Integer.parseInt(request.getParameter("note_id"));
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteid);
		%>
		<h1>Update Note</h1>
		<!--  Form  -->
		<form action="UpdateServlet" method="POST">
			<input hidden name="id" value="<%=noteid %>">
			<div class="mb-3">
				<label for="title" class="form-label">Note title</label>
				 <input
					type="text"
					 class="form-control" 
					 id="title"
					  name="title"
					  value="<%=note.getTitle()%>"
					   required>

			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea style="height: 300px;" type="textarea"
					class="form-control" name="content" id="content"
					
					 required><%=note.getContent()%></textarea>
			</div>

			<button type="submit" class="btn btn-success ">Save</button>
		</form>



	</div>


</body>
</html>