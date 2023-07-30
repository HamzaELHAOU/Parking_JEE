<%@page import="org.apache.taglibs.standard.tag.common.fmt.RequestEncodingSupport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="web.client" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> <%=session.getAttribute("cnie") %></h1>
<h1> <%=session.getAttribute("nom") %></h1>
<h1> <%=session.getAttribute("prenom") %></h1>
<h1> <%=session.getAttribute("email") %></h1>
<h1> <%=session.getAttribute("code") %></h1>
<h1> <%=session.getAttribute("compte") %></h1>
<h1> <%=session.getAttribute("tele") %></h1>
<h1> <%=session.getAttribute("gender") %></h1>
<h1> <%=session.getAttribute("adresse") %></h1>
</body>
</html>