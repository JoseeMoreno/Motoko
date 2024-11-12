# Administrador de Tareas en Motoko

Este proyecto es un administrador de tareas simple implementado en Motoko, el lenguaje de programación utilizado en el Internet Computer de DFINITY. El actor `TaskManager` permite a los usuarios agregar, mostrar, editar y eliminar tareas.

## Contenidos

- [Descripción](#descripción)
- [Funciones Principales](#funciones-principales)
- [Cómo Ejecutar el Proyecto](#cómo-ejecutar-el-proyecto)
- [Ejemplos de Uso](#ejemplos-de-uso)
- [Mejoras Futuras](#mejoras-futuras)
- [Licencia](#licencia)

## Descripción

El actor `TaskManager` mantiene una lista de tareas utilizando una variable estable (`stable var`). Las tareas se almacenan como texto simple en un array.

### Características

- *Agregar tareas*: Permite agregar nuevas tareas a la lista.
- *Mostrar todas las tareas*: Muestra todas las tareas existentes con índices iniciando desde 1.
- *Editar tareas*: Permite editar el contenido de una tarea existente.
- *Eliminar tareas*: Permite eliminar una tarea específica de la lista.

## Funciones Principales

### 1. `agregar_tarea(descripcion: Text): async Text`

Agrega una nueva tarea al final de la lista.

### 2. `mostrar_todas_las_tareas(): async [Text]`

Retorna una lista de todas las tareas existentes, numeradas a partir de 1.

### 3. `borrar_tarea(index: Nat): async Text`

Elimina una tarea específica de la lista basada en su índice.

### 4. `editar_tarea(index: Nat, nuevoCuerpo: Text): async Text`

Edita el contenido de una tarea existente.


### Prerrequisitos

- DFINITY SDK (dfx) instalado en tu sistema.
- Familiaridad básica con Motoko y el desarrollo en el Internet Computer.
- Tambien puedes descargar las extensiones en Visual Studio para generar canisters temporales en los que se ejecuta el código.
