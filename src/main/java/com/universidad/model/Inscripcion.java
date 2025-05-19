package com.universidad.model;

import java.time.LocalDate;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "inscripcion")
public class Inscripcion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "estudiante_id")
    private Estudiante estudiante;

    @NotNull
    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "materia_id")
    private Materia materia;

    @NotNull
    private LocalDate fechaInscripcion;
}
