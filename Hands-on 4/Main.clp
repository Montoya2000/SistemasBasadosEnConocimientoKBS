; Cargar plantillas, hechos y reglas de mercado
(load "tienda/plantilla.clp")
(load "tienda/hechos.clp")
(load "tienda/reglas.clp")

; Cargar plantillas y hechos de clientes
(load "clientes/plantilla.clp")
(load "clientes/hechos.clp")

; Cargar plantillas y hechos de productos
(load "productos/plantilla.clp")
(load "productos/hechos.clp")

; Inicializar el entorno
(reset)

; Ejecutar el motor de inferencia
(run)
