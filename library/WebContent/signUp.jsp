<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Cadastro</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <%@include file="header.jsp" %>
    <form class="form-horizontal" style="margin-top: 120px" method=post action=control>
		<%
			String message = (String) request.getAttribute("message");
			String alert = (String) request.getAttribute("alert");
			if(message != null){
				out.println("<div align=center class=\"" + alert + "\">" + message + "</div>");
			}
		%>
        <div class="panel-body">
            <div class="form-group">
                <div class="col-md-11 control-label">
                    <p class="help-block">
                        <h11>*</h11> Campo Obrigat�rio </p>
                </div>
            </div>
            
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-1 control-label" for="Nome" style="text-align:left; margin-left: 105px;">Nome
                    <h11>*</h11>
                </label>
                <div class="col-md-5">
                    <input id="Nome" name="name" placeholder="" class="form-control input-md" required="" type="text">
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-1 control-label" for="Nome" style="text-align:left; margin-left: 105px;">CPF
                    <h11>*</h11>
                </label>
                <div class="col-md-2">
                    <input id="cpf" name="cpf" placeholder="Apenas n�meros" class="form-control input-md" required="" type="text" maxlength="11"
                        pattern="[0-9]+$">
                </div>              
            </div>

            <!-- Prepended text-->
            <div class="form-group">
                <label class="col-md-1 control-label" for="prependedtext" style="text-align:left; margin-left: 105px;">Telefone
                    <h11>*</h11>
                </label>
                <div class="col-md-2">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-earphone"></i>
                        </span>
                        <input id="prependedtext" name="tel" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13"
                            pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$" OnKeyPress="formatar('## #####-####', this)">
                    </div>
                </div>
            </div>

            <!-- Prepended text-->
            <div class="form-group">
                <label class="col-md-1 control-label" for="prependedtext" style="text-align:left; margin-left: 105px;">Email
                    <h11>*</h11>
                </label>
                <div class="col-md-5">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-envelope" ></i>
                        </span>
                        <input id="prependedtext" name="email" class="form-control" placeholder="email@email.com" required="" type="email"
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-md-1 control-label" for="prependedtext" style="text-align:left; margin-left: 105px;">Senha
                    <h11>*</h11>
                </label>
                <div class="col-md-3">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-lock"></i>
                        </span>
                        <input id="prependedtext" name="password1" class="form-control" placeholder="Senha" required="" type="password">
                    </div>
                    <div class="input-group" style="margin-top: 5px;">
                         <span class="input-group-addon">
                            <i class="glyphicon glyphicon-lock"></i>
                        </span>
                        <input id="prependedtext" name="password2" class="form-control" placeholder="Confirmar senha" required="" type="password">
                    </div>
                </div>
            </div>

            <!-- Prepended text-->
            <div class="form-group">
                <label class="col-md-1 control-label" for="prependedtext" style="text-align:left; margin-left: 105px;">Endere�o *</label>
                
                <div class="col-md-2">
                    <div class="input-group">
                        <span class="input-group-addon">CEP</span>
                        <input id="cep" name="cep" placeholder="Apenas n�meros" class="form-control input-md" required="" value="" type="search"
                        maxlength="8" pattern="[0-9]+$">
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon">Rua</span>
                        <input id="rua" name="street" class="form-control" placeholder="" required="" type="text">
                    </div>

                </div>
                <div class="col-md-2">
                    <div class="input-group">
                        <span class="input-group-addon">N�
                            <h11>*</h11>
                        </span>
                        <input id="numero" name="number" class="form-control" placeholder="" required="" type="text">
                    </div>

                </div>
                
            </div>

            <div class="form-group" style="margin-left: 250px;">
            	<div class="col-md-3">
                    <div class="input-group">
                        <span class="input-group-addon">Bairro</span>
                        <input id="bairro" name="district" class="form-control" placeholder="" required="" type="text">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon">Cidade</span>
                        <input id="cidade" name="city" class="form-control" placeholder="" required="" type="text">
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="input-group">
                        <span class="input-group-addon">Estado</span>
                        <input id="estado" name="state" class="form-control" placeholder="" required="" type="text" maxlength="2">
                    </div>
                </div>
            </div>
            
            <% Integer role = null;
				objRole = request.getSession().getAttribute("role");
			    if (objRole != null) {
			    	role = Integer.parseInt(objRole.toString());
			    }
			    
			    if(role != null && role == 1){
		    %>
            
            <div class="form-group">
                <label class="col-md-1 control-label" for="prependedtext" style="text-align:left; margin-left: 105px;">Role</label>
                <div class="col-md-2">
                      	<!-- <input id="doador" name="donor" class="form-check-input" placeholder="" required="" readonly="readonly" type="checkbox"> Quero ser um doador -->
                
                		<select class="form-control" name="role">
		                	<option value="1">Admin</option>
		                	<option value="2">Usu�rio</option>
		                	<option value="3">Doador</option>
		                </select>
                </div>
            </div>
            
            <% } %>
            
            <!-- Button (Double) -->
            <div class="form-group">
                <label class="col-md-2 control-label" for="Cadastrar"></label>
                <div class="col-md-8">
                    <input id="Cadastrar" name="Cadastrar" class="btn submit" type="Submit" value=Cadastrar>
                    <button id="Cancelar" name="Cancelar" class="btn cancel" type="Reset">Cancelar</button>
                </div>
            </div>
        </div>
        <input type="hidden" name=command value=RegisterUser>
    </form>
</body>

</html>