package com.universidad.service;

import com.universidad.dto.InscripcionDTO;
import java.util.List;

public interface IInscripcionService {
    public InscripcionDTO crearInscripcion(InscripcionDTO inscripcion);
    public InscripcionDTO obtenerInscripcion(Long id);
    List<InscripcionDTO> obtenerTodasLasInscripciones();
    List<InscripcionDTO> obtenerInscripcionesPorEstudiante(Long estudianteId);
    InscripcionDTO actualizarInscripcion(Long id, InscripcionDTO inscripcion);
    void eliminarInscripcion(Long id);
}
