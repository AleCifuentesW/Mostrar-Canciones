package com.ale.canciones.repositorios;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.ale.canciones.modelos.Cancion;


@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {

    List<Cancion> findAll();
}