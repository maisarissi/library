<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    
    <div class="container navbar-fixed-top header">                            
        <a href="/library"><img class="logo" src="resources/images/logo.png"/></a>

        
        <!-- Renderizar apenas se o usu�rio n�o estiver logado -->
        <div>
            <% String user = (String) request.getSession().getAttribute("user");
        
	        	if (user == null) {
	        		out.print("<div class=\"pull-right\">");
	        		out.print("<form method=\"post\" action=\"control\" class=\"pull-right\">");
	        		out.print("<input class=\"form-control login-input\" placeholder=\"E-mail\" name=\"email\" type=\"email\" autofocus=\"\" />");
	        		out.print("<input class=\"form-control login-input\" placeholder=\"Senha\" name=\"password\" type=\"password\" value=\"\" />");
	        		out.print("<input id=\"Login\" name=\"Login\" class=\"btn submit\" type=\"Submit\" value=\"Login\" />");
	        		out.print("<input type=hidden name=command value=Login />");
	        		out.print("</form>");
	        		out.print("<br>");
	        		out.print("<a class=\"login-container-link\" href=\"signUp.jsp\">N�o possui conta? Cadastre-se aqui</a>");
	        		out.print("</div>");
	        	}
	        	else {
	        		out.print("<form method=\"post\" action=\"control\" class=\"pull-right\">");
	        		out.print("<p class=\"header-text\">Bem-vindo " + user + "! </p>");
	        		out.print("<input id=\"Logout\" name=\"Logout\" class=\"btn submit\" type=\"Submit\" value=\"Sair\" />");
	        		out.print("<input type=hidden name=command value=Logout />");
	        		out.print("</form>");
	        	}
	        %>
        </div>
    </div>
        
    <!-- Menu -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                	                	
                	<% 
                		Object objRole = request.getSession().getAttribute("role");
                		
                		if (objRole != null) {
                			int roleHeader = Integer.parseInt(objRole.toString());
                			
                			if (roleHeader == 1) {
                				%>
                				<%@include file="include/menu/admin.jsp" %>
                				<%
                    		} else if (roleHeader == 2) {
                    			%>
                				<%@include file="include/menu/user.jsp" %>
                				<%
                    		} else if (roleHeader == 3) {
                    			%>
                				<%@include file="include/menu/donator.jsp" %>
                				<%
                    		} 
                		} else {
                			%>
            				<%@include file="include/menu/default.jsp" %>
            				<%
                		}
                		
                	%>
                    
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
