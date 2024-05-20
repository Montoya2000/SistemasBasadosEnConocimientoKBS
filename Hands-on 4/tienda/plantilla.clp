(deftemplate tarjeta-de-credito
   (slot banco)
   (slot tipo)
   (slot fecha-expiracion))

(deftemplate vale
   (slot valor))

(deftemplate orden-de-compra
   (slot cliente-id)
   (multislot items))
