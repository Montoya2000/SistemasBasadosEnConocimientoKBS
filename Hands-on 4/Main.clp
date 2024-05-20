; Cargar plantillas, hechos y reglas de mercado
(load "tienda/plantilla.clp")
(load "tienda/echos.clp")
(load "tienda/reglas.clp")

; Cargar plantillas y hechos de clientes
(load "clientes/plantilla.clp")
(load "clientes/echos.clp")

; Cargar plantillas y hechos de productos
(load "productos/plantilla.clp")
(load "productos/echos.clp")

; Inicializar el entorno
(reset)

; Ejecutar el motor de inferencia
(run)
