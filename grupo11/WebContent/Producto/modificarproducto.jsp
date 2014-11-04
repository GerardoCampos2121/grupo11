<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="sv.edu.ues.igf115.grupo11.negocio.*" %>
       <%@ page import="sv.edu.ues.igf115.grupo11.utilidades.*" %>
     <%@ page import="java.math.BigDecimal" %>
    <%@ page import=" java.util.Date" %>    
    <%@ page import="java.text.SimpleDateFormat;" %>
    
<%
String nombreant=request.getParameter("nombreantiguo");
String id  = request.getParameter("id");
String nombre = request.getParameter("nombre");


String fechacapturada = request.getParameter("fecha");
SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
Date fecha = null; //iniciamos fecha
fecha = formatoDelTexto.parse(fechacapturada);


BigDecimal precio = new BigDecimal(request.getParameter("precio"));
String idpro = request.getParameter("idpro");
CtrlProducto producto = new CtrlProducto();
CtrlProveedor prov = new CtrlProveedor();

boolean exito = producto.modificarProducto(nombreant, id, nombre, fecha, precio, prov.daProveedorById(idpro));
String mensaje;
	if(exito)
		mensaje = "El producto fue modificado";
	else
		mensaje = "No se pudo modificar el Producto";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar Producto</title>
<%=mensaje%>
</head>
<body>

</body>
</html>