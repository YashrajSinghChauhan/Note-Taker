<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   
<%@include file="All_js_css.jsp" %>
<title>Insert title here</title>
</head>
<body>
       <div class="container-fluid">
      <%@include file="Navbar.jsp" %>
      <br>
      </div>
      <div class="container">
      <h1>Add Note</h1>
      <!--  Form  -->
      <form action="SaveNote" method="POST">
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input type="text" class="form-control" id="title" name="title" required>
    <div id="emailHelp" class="form-text"></div>
  </div>
  <div class="mb-3">
     <label for="content" class="form-label">Note Content</label>
    <textarea style="height:300px;"  type="textarea" class="form-control" name="content" id="content" required></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary ">Submit</button>
</form>
      </div>
</div>



</body>
</html>