;; Cargar plantillas y hechos de productos y clientes en la memoria de trabajo de CLIPS
(load "load-prod-cust.clp")

;; Cargar reglas de productos y clientes en CLIPS
(load "load-prodcust-rules.clp")

;; Limpiar la memoria de trabajo de CLIPS
(reset)

;; Mostrar los hechos actuales en la memoria de trabajo de CLIPS
(printout t "Current stored facts in CLIPS Working Memory:" crlf)
(facts)

;; Ejecutar el motor de inferencia de CLIPS
(run)

;; Limpiar la memoria de trabajo de CLIPS
(clear)
