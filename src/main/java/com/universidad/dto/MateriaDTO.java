package com.universidad.dto;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MateriaDTO implements Serializable {
    
    private Long id;

    @NotBlank(message = "El nombre de la materia es obligatorio")
    @Size(max = 100, message = "El nombre no debe superar 100 caracteres")
    private String nombreMateria;

    @NotBlank(message = "El código único es obligatorio")
    @Size(max = 20, message = "El código único no debe superar 20 caracteres")
    private String codigoUnico;

    @NotNull(message = "Los créditos son obligatorios")
    @Min(value = 1, message = "El mínimo de créditos es 1")
    @Max(value = 20, message = "El máximo de créditos es 20")
    private Integer creditos;

    @NotNull(message = "El docente es obligatorio")
    private Long docenteId;

    /**
     * Lista de IDs de materias que son prerequisitos para esta materia.
     */
    private List<Long> prerequisitos;

    /**
     * Lista de IDs de materias para las que esta materia es prerequisito.
     */
    private List<Long> esPrerequisitoDe;
}