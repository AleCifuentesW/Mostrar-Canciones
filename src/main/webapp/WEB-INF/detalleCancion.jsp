<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Detalle cancion</title>
    <link rel="stylesheet" href="/css/style.css">
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
        <a href="/canciones">Volver a la lista de canciones</a>
    </div>

    
</div>
</body>
</html>