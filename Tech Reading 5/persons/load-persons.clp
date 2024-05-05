(deftemplate person
    (slot name)
    (slot gender)
    (slot age (type INTEGER))
    (slot partner (type SYMBOL)) ; Cambiado a SYMBOL para representar el nombre del partner
)

(deffacts partnership
    (person (name "Fred") (gender male) (age 26) (partner "Susan"))
    (person (name "Susan") (gender female) (age 24) (partner "Fred"))
    (person (name "Andy") (gender male) (age 25) (partner "Sara"))
    (person (name "Alice") (gender female) (age 23) (partner "Bob"))
)
