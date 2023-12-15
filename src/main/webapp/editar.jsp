<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<%
 Orador orador = (Orador)request.getAttribute("orador");
%>
<!doctype html>
<html lang="es">
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <title>Edicion de oradores</title>
    <link rel="shortcut icon" href="./editar.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estilos.css">
=======
    <title>Proyecto Integrador Front</title>
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estilos.css">
	<style>
		.d-grid{
			background-color: green !important;
		}
	</style>
>>>>>>> ed8ec47a455d0f2137c4005c1aeb3e7444091b4d
</head>
	<body>
		   <header>
	        <nav class="navbar navbar-expand-lg container navbar-dark">
	            <a href="./index.jsp">
	                <img src="./assets/img/codoacodo.png" alt="Logo de Codo a Codo 4.0">            
	            </a>
	            <h2>Conf Bs As</h2>
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	                <span class="navbar-toggler-icon"></span>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-end">
	                    <li class="nav-item">
	                    <li class="nav-item">
	                    <a class="nav-link" href="index.jsp#conferencia">La conferencia</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link" href="index.jsp#lugarFecha">El lugar y la fecha</a>
	                    </li>
	                    <li class="nav-item">
<<<<<<< HEAD
	                    <a class="nav-link" aria-current="page" href="index.jsp#formularioOrador">Conviértete en orador</a>
=======
	                    <a class="nav-link" aria-current="page" href="index.jsp#formularioOrador">Conviï¿½rtete en orador</a>
>>>>>>> ed8ec47a455d0f2137c4005c1aeb3e7444091b4d
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link colorVerde" href="./pages/tickets.html">Comprar tickets</a>
	                    </li>
	                    <li class="nav-item">
<<<<<<< HEAD
	                        <a class="nav-link login activa" href="login.jsp">LogIn</a>
=======
	                        <a class="nav-link login" href="login.jsp">LogIn</a>
>>>>>>> ed8ec47a455d0f2137c4005c1aeb3e7444091b4d
	                    </li> 
	                </ul>
	            </div>
	        </nav>
	    </header>
		<main class="mb-5">
<<<<<<< HEAD
		    <section id="formularioModificarOrador" class="formularioOrador">
	            <h2>
	                Modificar datos del Orador
	            </h2>
	            <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST" class="recuadrosFormulario">
	            	<input type="hidden" name="id" value="<%=orador.getId()%>">
	                <div>
	                    <input type="text" id="validationCustom02" name="nombre" placeholder="Nombre" value="<%=orador.getNombre()%>" required>
	                    <input type="text" id="apellido" name="apellido" placeholder="Apellido" value="<%=orador.getApellido()%>" required>
	                </div>
	                <div>
	                    <input type="email" id="mail" name="mail" placeholder="correo@youmail.com" value="<%=orador.getMail()%>" required>
	                </div>
	                    <textarea name="tema" id="exampleFormControlTextarea1" cols="55" rows="5" placeholder="<%=orador.getTema()%>" required><%=orador.getTema()%> </textarea>
	                </div>
	                <p>Recuerda incluir un título para tu charla</p>
	                <div>
	                    <button type="submit" class="btnEnviar btnModificar btn btn-form">Modificar</button>
	                </div>
	            </form>
	            <div class="btn-volver container vh-10 d-flex justify-content-center align-items-center">
		        	<div class="text-center">
		        	<a class="btn bg-success" href="./login.jsp">Volver</a>
		    	</div>
       		</section>
=======
          <section class="container mt-5" id="form-orador">
		        <div class="row justify-content-center">
		            <div class="col-lg-8 col-xl-7">
		                <h2 class="titulo-gral">Modificar datos del Orador</h2>
		               
		                <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST">
		                    <div class="row gx-2">
		                        <div class="col-md mb-3">
		                            <input type="hidden" name="id" value="<%=orador.getId()%>">
		                            <input type="text" class="form-control" 
		                             name="nombre" 
		                             placeholder="Nombre" 
		                             aria-label="Nombre"
		                             id="validationCustom02"
		                             value="<%=orador.getNombre()%>" 
		                             required>
		                        </div>
		                        <div class="col-md mb-3">
		                            <input type="text" class="form-control" name="apellido" placeholder="Apellido" aria-label="Apellido"
		                             value="<%=orador.getApellido()%>" 
		                             required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <input type="email" class="form-control" name="mail" placeholder="Email" aria-label="Email"
		                            value="<%=orador.getMail()%>"  
		                            required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <textarea class="form-control" name="tema" id="exampleFormControlTextarea1" rows="4"
		                              
		                                placeholder="<%=orador.getTema()%>" 
		                                
		                                required><%=orador.getTema()%> </textarea>
		                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un tï¿½tulo para tu charla.</div>
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-form">Modificar</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </section>
		
>>>>>>> ed8ec47a455d0f2137c4005c1aeb3e7444091b4d
		</main>
		<jsp:include page="footer.jsp"/>
	</body>
</html>