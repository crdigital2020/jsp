<html>
<head>
    <title>Murach's Java Servlets and JSP</title>
</head>
<body>

<%@ page import="business.Product" %>
<% 
    Product product = (Product) session.getAttribute("product"); 
%>

<h1>Downloads</h1>

<table cellpadding="5" border="1">
<tr><td colspan="2"><b><%= product.getDescription()%></b></td></tr>
<tr><td width="200"><b>Song title</b></td>
    <td width="150"><b>Audio Format</b></td>
</tr>
<tr><td>Filter</td>
    <td><a href="/musicStore/sound/<%= product.getCode() %>/filter.mp3">MP3</a></td>
</tr>
<tr><td>So Long Lazy Ray</td>
    <td><a href="/musicStore/sound/<%= product.getCode() %>/so_long.mp3">MP3</a></td>
</tr>
</table>

<p><a href="<%= response.encodeURL("index.jsp")%>">
    View list of albums</a>.</p>

<p><a href="<%= response.encodeURL("view_cookies.jsp")%>">
    View all cookies</a>.</p>

</body>
</html>