<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Detalle cancion</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
<div class="contenedor">
    <h1>${cancion.titulo}</h1>
    

    <div class="detalle_cancion">
        <p>Artista: ${cancion.artista}</p>
        <p>Álbum: ${cancion.album}</p>
        <p>Género: ${cancion.genero}</p>
        <p>Idioma: ${cancion.idioma}</p>
        <p>Creada: ${cancion.fechaCreacion}</p>
        <p>Actualizada: ${cancion.fechaActualizacion}</p>
        
    </div>
    <%--agrega un botón para actualizar la canción.--%>
    <p style="margin-top: 20px;">
        <a class="btn" href="${pageContext.request.contextPath}/canciones/formulario/editar/${cancion.id}">Editar la canción</a>
    </p>

    <p style="margin-top:15px;">
        <a href="${pageContext.request.contextPath}/canciones">Volver a lista de canciones</a>
    </p>

    <form action="${pageContext.request.contextPath}/canciones/eliminar/${cancion.id}"
        method="POST"
        style="margin-top:15px;"
        onsubmit="return confirm('¿Quieres eliminar esta canción?');">

        <input type="hidden" name="_method" value="DELETE"/>
        <button type="submit" class="btn">Eliminar canción</button>
    </form>


    
</div>
</body>
</html>