(defrule artritis
   (sintoma "fatiga")
   (sintoma "Rigidez")
   (sintoma "Perdida de movimiento")
   (sintoma "dolor articular")
   (sintoma "hinchazon articular")
   =>
   (printout (diagnostico "Artritis"))
)

(defrule hipertension
   (sintoma "fatiga")
   (sintoma "mareos")
   (sintoma "Vision Borrosa")
   (sintoma "Dolor de cabeza")
   (sintoma "Presion arterial alta")
   (not (sintoma "nauseas"))
   =>
   (printout (diagnostico "Hipertension"))
)

(defrule insuficiencia-renal
   (sintoma "fatiga")
   (sintoma "mareos")
   (sintoma "Vision Borrosa")
   (sintoma "Dolor de cabeza")
   (sintoma "Presion arterial alta")
   (sintoma "Nauseas")
   (sintoma "Confusion")
   (not (sintoma "dolor articular"))
   =>
   (printout (diagnostico "Insuficiencia Renal"))
)
(defrule artritis
   (sintoma "fatiga")
   (sintoma "Rigidez")
   (sintoma "Perdida de movimiento")
   (sintoma "dolor articular")
   (sintoma "hinchazon articular")
   =>
   (printout (diagnostico "Artritis"))
)

(defrule hipertension
   (sintoma "fatiga")
   (sintoma "mareos")
   (sintoma "Vision Borrosa")
   (sintoma "Dolor de cabeza")
   (sintoma "Presion arterial alta")
   =>
   (printout (diagnostico "Hipertension"))
)

(defrule insuficiencia-renal
   (sintoma "fatiga")
   (sintoma "mareos")
   (sintoma "Vision Borrosa")
   (sintoma "Dolor de cabeza")
   (sintoma "Presion arterial alta")
   (sintoma "Nauseas")
   (sintoma "Confusion")
   (not (sintoma "dolor articular"))
   =>
   (printout (diagnostico "Insuficiencia Renal"))
)

(defrule diabetes
   (sintoma "fatiga")
   (sintoma "Mareos")
   (sintoma "vision borrosa")
   (sintoma "perdida de peso")
   (sintoma "sed y hambre excesivas")
   =>
   (printout (diagnostico "Diabetes"))
)

(printout asma
   (sintoma "fatiga")
   (sintoma "Mareos")
   (sintoma "debilidad")
   (sintoma "tos")
   (sintoma "opresion en el pecho")
   (sintoma "sibilancias")
   (sintoma "Dificultad para respirar")
   =>
   (printout (diagnostico "Asma"))
)

(defrule anemia
   (sintoma "fatiga")
   (sintoma "Mareos")
   (sintoma "debilidad")
   (sintoma "palidez")
   (sintoma "frecuencia cardiaca rapida")
   =>
   (printout (diagnostico "Anemia"))
)

(defrule enfermedad-desconocida
   (sintoma ?s)
   (not (diagnostico ?d))
   =>
   (printout (diagnostico "Enfermedad desconocida"))
)

//Remplazar assert por printout