# Primer Parcial Base de Datos Avanzadas

El objetivo de este repositorio es contener todos los datos y archivos creados para el pirmer parcial de esta materia. Conteniendo el diagrama UML, requisitos tecnicos y su ejecucion.

### ADQUISICION DE MEDICAMENTOS E INSUMOS PARA PROCEDIMIENTOS A NIVEL NACIONAL DEL PNFRFSS.

La adquisición de medicamentos e insumos para procedimientos quirúrgicos en los servicios especializados de oftalmología a nivel nacional del PNFRFSS (Programa Nacional de Fortalecimiento de la Red de Farmacias y Servicios de Salud) se refiere al proceso mediante el cual se obtienen los medicamentos y suministros necesarios para llevar a cabo intervenciones quirúrgicas oftalmológicas en diferentes centros de salud en todo el país. Este programa tiene como objetivo garantizar el abastecimiento adecuado de medicamentos e insumos, asegurando la calidad y disponibilidad de los mismos para brindar una atención médica de calidad a los pacientes con afecciones oftalmológicas en todo el territorio nacional.

### Diagrama UML

Este es el diagrama UML para esta base de datos:


![DiagramaDB drawio (1)](https://github.com/RichyRed/PrimerParcialBDAv/assets/84047015/50b546fe-3dd6-40f7-9bc8-4f73626be2f8)





En resumen, las relaciones principales son:

* Relación de uno a muchos:

Hospital -> Servicio_Oftalmología

Especialidad -> Servicio_Oftalmología

Proveedor -> Adquisición_Medicamentos

Proveedor -> Adquisición_Insumos
* Relación de muchos a muchos:

Medicamento <-> Adquisición_Medicamentos (a través de la tabla Adquisición_Medicamentos)

Insumo <-> Adquisición_Insumos (a través de la tabla Adquisición_Insumos)

## Requisitos

* Tener instalado Docker
* Tener instalado git, para poder clonar el repositorio

## Como levantar

* Clonar el repo:

        git clone <URL_DEL_REPOSITORIO>
* Nos dirigimos a la ruta:

       cd testBDA\PrimerParcialBDAv\testBDA
* Levantamos el archivo .yml:

        docker-compose -f docker-compose.yml up

* Para bajar el servicio colocamos: 

        docker-compose -f docker-compose.yml down




