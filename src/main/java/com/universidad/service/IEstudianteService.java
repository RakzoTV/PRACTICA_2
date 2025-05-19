package com.universidad.service; // Define el paquete al que pertenece esta interfaz

import com.universidad.dto.EstudianteDTO; // Importa la clase EstudianteDTO del paquete dto
import com.universidad.model.Estudiante;

import java.util.List; // Importa la interfaz List para manejar listas

public interface IEstudianteService { // Define la interfaz IEstudianteService
    
    /**
     * Obtiene todos los estudiantes.
     * @return Lista de EstudianteDTO.
     */  
    List<EstudianteDTO> obtenerTodosLosEstudiantes(); // Método para obtener una lista de todos los EstudianteDTO

    /**
     * Obtiene un estudiante activo.
     * @return Lista de EstudianteDTO activos.
     * @throws RuntimeException si no se encuentra el estudiante activo.
     */
    List<EstudianteDTO> obtenerEstudianteActivo(); // Método para obtener una lista de EstudianteDTO activos

    
    /**
     * Obtiene un estudiante por su número de inscripción.
     * @param numeroInscripcion
     * @return
     */
    EstudianteDTO obtenerEstudiantePorNumeroInscripcion(String numeroInscripcion); // Método para obtener un estudiante por su número de inscripción

    /**
     * Crea un nuevo estudiante.
     * @param estudianteDTO DTO del estudiante a crear.
     * @return EstudianteDTO creado.
     */
    EstudianteDTO crearEstudiante(EstudianteDTO estudianteDTO); // Método para crear un nuevo estudiante
    
    /**
     * Actualiza un estudiante existente.
     * @param id ID del estudiante a actualizar.
     * @param estudianteDTO DTO del estudiante con los nuevos datos.
     * @return EstudianteDTO actualizado.
     *
     * @throws RuntimeException si el estudiante no se encuentra.
     */
    EstudianteDTO actualizarEstudiante(Long id, EstudianteDTO estudianteDTO); // Método para actualizar un estudiante existente

    /**
     * Elimina un estudiante por su ID.
     * @param id ID del estudiante a eliminar.
     */
    EstudianteDTO eliminarEstudiante(Long id, EstudianteDTO estudianteDTO); // Método para eliminar (de manera logica) un estudiante por su ID

    /**
     *  * Obtiene un estudiante por su ID con bloqueo pesimista.
     * @param id ID del estudiante a obtener.
     * @throws RuntimeException si el estudiante no se encuentra
     * @return
     */
    Estudiante obtenerEstudiantePorId(Long id); // Método para obtener un estudiante por su ID con bloqueo pesimista
}