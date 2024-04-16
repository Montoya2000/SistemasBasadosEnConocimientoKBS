(deftemplate enfermedad
    (slot nombre)
    (multislot signos)
    (multislot sintomas)
)

(deffacts enfermedades
    (enfermedad (nombre "Hipertension") (signos "presion arterial alta" "dolor de nuca") (sintomas "dolor de cabeza" "mareos" "vision borrosa"))
    (enfermedad (nombre "Diabetes") (signos "sed excesiva" "hambre excesiva") (sintomas "perdida de peso" "fatiga" "vision borrosa"))
    (enfermedad (nombre "Asma") (signos "sibilancias" "dificultad para respirar") (sintomas "tos" "opresion en el pecho"))
    (enfermedad (nombre "Anemia") (signos "palidez" "frecuencia cardiaca rapida") (sintomas "fatiga" "debilidad" "mareos"))
    (enfermedad (nombre "Artritis") (signos "dolor articular" "hinchazon articular") (sintomas "rigidez" "perdida de la amplitud de movimiento"))
    (enfermedad (nombre "Insuficiencia Renal") (signos "reduccion de la orina" "hinchazon de piernas") (sintomas "fatiga" "nauseas" "confusion"))
)

(defrule consultar-enfermedad
   ?e <- (enfermedad (nombre ?nombre) (signos $?signos) (sintomas $?sintomas))
   =>
   (printout t "Enfermedad: " ?nombre crlf)
   (printout t "Signos: " (implode$ ?signos) crlf)
   (printout t "Sintomas: " (implode$ ?sintomas) crlf)
)

(defrule consultar-signos
   (consulta-signos ?nombre)
   =>
   (bind ?enfermedades (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre)))
   (if (> (length$ ?enfermedades) 0)
      then
         (bind ?enfermedad (nth$ 1 ?enfermedades))
         (printout t "Signos de " ?nombre ": " 
            (implode$ (fact-slot-value ?enfermedad signos)) crlf)
      else
         (printout t "La enfermedad '" ?nombre "' no fue encontrada." crlf)
   )
)

(defrule consultar-sintomas
   (consulta-sintomas ?nombre)
   =>
   (bind ?enfermedades (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre)))
   (if (> (length$ ?enfermedades) 0)
      then
         (bind ?enfermedad (nth$ 1 ?enfermedades))
         (printout t "Sintomas de " ?nombre ": " 
            (implode$ (fact-slot-value ?enfermedad sintomas)) crlf)
      else
         (printout t "La enfermedad '" ?nombre "' no fue encontrada." crlf)
   )
)

(defrule eliminar-enfermedad-por-id
   (eliminar-enfermedad-id ?id)
   =>
   (retract ?id)
   (printout t "Enfermedad con identificador " ?id " eliminada de la base de conocimientos." crlf)
)