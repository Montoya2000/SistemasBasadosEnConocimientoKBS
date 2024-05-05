;; Cargar el template y hechos de personas en la memoria de trabajo de CLIPS
(load "persons/load-persons.clp")

;; Cargar las reglas de personas en CLIPS
(load "persons/load-persons-rules.clp")

;; Limpiar la memoria de trabajo de CLIPS
(clear)

;; Ejecutar el motor de inferencia de CLIPS
(run)

;; Mostrar los hechos actuales en la memoria de trabajo de CLIPS
(printout t "Current stored facts in CLIPS Working Memory:" crlf)
(facts)
