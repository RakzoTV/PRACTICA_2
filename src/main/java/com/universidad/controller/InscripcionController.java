package com.universidad.controller;

import com.universidad.dto.InscripcionDTO;
import com.universidad.service.IInscripcionService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/inscripciones")
public class InscripcionController {

    @Autowired
    private IInscripcionService inscripcionService;

    @PostMapping
    public ResponseEntity<InscripcionDTO> crear(@Valid @RequestBody InscripcionDTO inscripcion) {
        return ResponseEntity.ok(inscripcionService.crearInscripcion(inscripcion));
    }

    @GetMapping("/{id}")
    public ResponseEntity<InscripcionDTO> obtener(@PathVariable Long id) {
        InscripcionDTO inscripcion = inscripcionService.obtenerInscripcion(id);
        if (inscripcion == null) return ResponseEntity.notFound().build();
        return ResponseEntity.ok(inscripcion);
    }

    @GetMapping
    public ResponseEntity<List<InscripcionDTO>> listarTodas() {
        return ResponseEntity.ok(inscripcionService.obtenerTodasLasInscripciones());
    }

    @GetMapping("/estudiante/{estudianteId}")
    public ResponseEntity<List<InscripcionDTO>> listarPorEstudiante(@PathVariable Long estudianteId) {
        return ResponseEntity.ok(inscripcionService.obtenerInscripcionesPorEstudiante(estudianteId));
    }

    @PutMapping("/{id}")
    public ResponseEntity<InscripcionDTO> actualizar(@PathVariable Long id, @Valid @RequestBody InscripcionDTO inscripcion) {
        return ResponseEntity.ok(inscripcionService.actualizarInscripcion(id, inscripcion));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> eliminar(@PathVariable Long id) {
        inscripcionService.eliminarInscripcion(id);
        return ResponseEntity.noContent().build();
    }
}