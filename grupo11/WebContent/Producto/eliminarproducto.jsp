<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="sv.edu.ues.igf115.grupo11.negocio.*" %>

<%
	String nombre  = request.getParameter("nombre");
	CtrlProducto producto = new CtrlProducto();
	boolean exito = producto.borrarProductoByDescripcion(nombre);
	String mensaje;
	if(exito)
		mensaje = "El producto fue eliminado";
	else
		mensaje = "No se pudo eliminar el Producto";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar Producto</title>
<%=mensaje%>
</head>
<body>

</body>
</html>