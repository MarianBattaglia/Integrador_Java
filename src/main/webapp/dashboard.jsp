<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<!doctype html>
<html lang="es">
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrar oradores</title>
    <link rel="shortcut icon" href="./listado.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/estilos.css">
<<<<<<< HEAD
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
                    <a class="nav-link" aria-current="page" href="index.jsp#formularioOrador">Convi�rtete en orador</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link colorVerde" href="./pages/tickets.html">Comprar tickets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link login activa" href="#">LogIn</a>
                    </li> 
                </ul>
            </div>
        </nav>
	</header>
		<main>
			<section class="container my-4 buscadorOrador">
                <div class="row justify-content-end">
                    <div class="col-md-4">
                        <h5 class="text-center">Elige qu� tema buscar</h5>
                        <form class="d-flex justify-content-center align-items-center" action="<%=request.getContextPath()%>/BuscarOradorTemaController" method="POST">
                            <div class="input-group">
                                <input class="form-control" name="temabuscar" id="temabuscar" type="search" placeholder="Escrib� un tema" aria-label="Buscar">
                                <button class="btn bg-success" type="submit">Buscar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
=======
    <style>
		/* Estilo personalizado para el buscador */
		.container-button {
		  margin-left: 60%; /* Para ubicarlo a la derecha */
		  padding: 20px !important;
		  width: 30% !important;
		}
        .btn-lg {
           padding: 10px 100px !important; /* Ajusta el padding para cambiar el tamaño del botón */
           font-size: 20px !important; /* Cambia el tamaño del texto del botón */
        }
    </style>
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
	                    <a class="nav-link" aria-current="page" href="index.jsp#formularioOrador">Convi�rtete en orador</a>
	                    </li>
	                    <li class="nav-item">
	                    <a class="nav-link colorVerde" href="./pages/tickets.html">Comprar tickets</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link login activa" href="#">LogIn</a>
	                    </li> 
	                </ul>
	            </div>
	        </nav>
	    </header>
		<main>
			<div class="container-button">
				<h1 style="text-align: right; font-size: 20px;">Elige que tema buscar</h1>
					<form class="d-flex btn" action="<%=request.getContextPath()%>/BuscarOradorTemaController" method="POST">
						<input class="form-control me-2" name="temabuscar" id="temabuscar" type="search" placeholder="Escribi un tema" aria-label="Buscar">
						<input class="btn btn-outline-darck bg-success text-darck" type="submit" value="Buscar">
					</form>
			</div>
>>>>>>> ed8ec47a455d0f2137c4005c1aeb3e7444091b4d
			<div id="searchResults">
			<!-- Aqui se mostrarian los resultados de la busqueda -->
			</div>
			<section class="container mt-5 mb-4" id="restoOradores">
		        <h2 class="titulo-gral text-center">Conoce a todos los oradores que se presentan</h2>
		      
		        <div class="table-responsive">
		            <table class="table">
		                <thead>
		                  <tr>
		                    <th scope="col">#</th>
		                    <th scope="col">Nombre</th>
		                    <th scope="col">Apellido</th>
		                    <th scope="col">Tema</th>
		                    <th scope="col">Activo</th>
		                    <th class="text-center" scope="col">Acciones</th>
		                  </tr>
		                </thead>
		                 <% 
						  	//codigo java
						  	//obtener el listado desde el request
						  	//se guardo bajo el nombre de "listado"
						  	List<Orador> listado = (List<Orador>)request.getAttribute("listado");
					 	 %>
		                <tbody>
			                 <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
						   <%
						   	for( Orador  unOrador : listado) {
						   %>
		                  <tr>
		                    <th scope="row"><%=unOrador.getId()%></th>
		                    <td><%=unOrador.getNombre() %></td>
		                    <td><%=unOrador.getApellido() %></td>
		                    <td><%=unOrador.getTema() %></td>
		                    <td><%=unOrador.getActivo() %></td>
		                    <td class="text-center">
		                    	<a class="btn btn-info" role="button" href="<%=request.getContextPath()%>/UpdateOradorController?id=<%=unOrador.getId()%>">
							       Editar
							    </a> | 
					      		<!-- Button trigger modal -->
								<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="setOradorId(<%=unOrador.getId()%>)">
								  Eliminar
								</button>
							  </td>
		                  </tr>
		                   <%
					   		}
					  	   %>
		                </tbody>
		              </table>
		        </div>
<<<<<<< HEAD
				<div class="btn-volver container vh-10 d-flex justify-content-center align-items-center">
		        	<div class="text-center">
		        	<a class="btn bg-success" href="./login.jsp">Volver</a>
		    	</div>
			</div>

    	</section>
		</main>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		    	<form action="<%=request.getContextPath()%>/DeleteOradorController">
		    	  <input type="hidden" name="idOrador" id="idOrador">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Dar de baja Orador</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        �Confirma que desea eliminar? 
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-danger">Eliminar</button>
			      </div>
		    	</form>
		    </div>
		  </div>
		</div>
	 <jsp:include page="footer.jsp"/>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script>
			function setOradorId(id) {
				document.getElementById('idOrador').value=id;
			}
	 </script>
=======
				<div class="container vh-10 d-flex justify-content-center align-items-center">
					<div class="text-center">
						<a class="btn btn-lg btn-success" href="./login.jsp">Volver</a>
					</div>
				</div>
    	  </section>
		</main >
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		    	    <form action="<%=request.getContextPath()%>/DeleteOradorController">
		    	        <input type="hidden" name="idOrador" id="idOrador">
			            <div class="modal-header">
			                <h5 class="modal-title" id="exampleModalLabel">Dar de baja Orador</h5>
			                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			            </div>
			            <div class="modal-body">
			                �Confirma que desea eliminar? 
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			                <button type="submit" class="btn btn-danger">Eliminar</button>
			            </div>
		    	    </form>
					
		        </div>
		    </div>
		</div>	 
		 
	 <jsp:include page="footer.jsp"/>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script> 
			function setOradorId(id) {
				document.getElementById('idOrador').value=id;
			}
	    </script>
>>>>>>> ed8ec47a455d0f2137c4005c1aeb3e7444091b4d
   </body>
</html>