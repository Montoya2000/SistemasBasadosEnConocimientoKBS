;;Templates

(deftemplate smartphone
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio))

(deftemplate computadora
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio))

(deftemplate accesorio
   (slot tipo)
   (slot marca)
   (slot modelo)
   (slot precio))

(deftemplate cliente
   (slot nombre)
   (slot tipo) ; menudista o mayorista
   (slot historial-compras))

(deftemplate orden-compra
   (slot cliente)
   (slot productos) ; lista de productos comprados
   (slot metodo-pago))

(deftemplate tarjeta-credito
   (slot banco)
   (slot tipo)
   (slot expiracion))

(deftemplate vale
   (slot valor)
   (slot fecha-expiracion))

;;Echos iniciales

(deffacts inicial
   (smartphone (marca apple) (modelo iPhone15) (color rojo) (precio 17000))
   (smartphone (marca samsung) (modelo Note12) (color negro) (precio 15000))
   (computadora (marca apple) (modelo MacBookAir) (color gris) (precio 25000))
   (tarjeta-credito (banco banamex) (tipo visa) (expiracion 01-12-23))
   (tarjeta-credito (banco liverpool) (tipo visa) (expiracion 01-12-24))
   (cliente (nombre "Juan Perez") (tipo menudista) (historial-compras ()))
   (cliente (nombre "Empresa XYZ") (tipo mayorista) (historial-compras ()))
)

;; Reglas de negocio
(defrule oferta-iphone15-banamex
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone (marca apple) (modelo iPhone15) $?)) (metodo-pago (banco banamex)))
   =>
   (printout t "Oferta: 24 meses sin intereses con tarjetas Banamex para la compra de un iPhone 15." crlf))

(defrule oferta-samsung-note12-liverpool
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone (marca samsung) (modelo Note12) $?)) (metodo-pago (banco liverpool)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas Liverpool VISA para la compra de un Samsung Note 12." crlf))

(defrule oferta-macbook-iphone-contado
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone (marca apple) (modelo iPhone15) $?s) (computadora (marca apple) (modelo MacBookAir) $?)) (metodo-pago contado))
   =>
   (let* ((total (compute-total ?productos)))
   (bind ?vales (/ total 1000))
   (printout t "Oferta: " ?vales " vales de 100 pesos por la compra de una MacBook Air y un iPhone 15 al contado." crlf)))

(defrule oferta-smartphone-accesorio
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone $?)))
   =>
   (printout t "Oferta: 15% de descuento en funda y mica por la compra de un Smartphone." crlf))

(defrule descuento-accesorios-smartphone
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone $?)))
   =>
   (printout t "Descuento: 10% de descuento en cualquier accesorio por la compra de un smartphone." crlf))

(defrule oferta-hp-bbva
   (orden-compra (cliente ?cliente) (productos $?productos (computadora (marca hp) $?)) (metodo-pago (banco bbva)))
   =>
   (printout t "Oferta: 18 meses sin intereses con tarjetas BBVA para la compra de una laptop HP." crlf))

(defrule descuento-auriculares-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 20% de descuento en auriculares por la compra de una computadora." crlf))

(defrule descuento-funda-tablet-samsung
   (orden-compra (cliente ?cliente) (productos $?productos (tablet (marca samsung) $?)))
   =>
   (printout t "Descuento: 15% de descuento en funda para tablet Samsung." crlf))

(defrule oferta-applewatch-santander
   (orden-compra (cliente ?cliente) (productos $?productos (smartwatch (marca apple) (modelo AppleWatch) $?)) (metodo-pago (banco santander)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas Santander para la compra de un Apple Watch." crlf))

(defrule descuento-teclado-mouse
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 10% de descuento en teclado y mouse por la compra de una computadora." crlf))

(defrule oferta-ipad-hsbc
   (orden-compra (cliente ?cliente) (productos $?productos (tablet (marca apple) (modelo iPad) $?)) (metodo-pago (banco hsbc)))
   =>
   (printout t "Oferta: 24 meses sin intereses con tarjetas HSBC para la compra de un iPad." crlf))

(defrule descuento-impresora-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 10% de descuento en impresora por la compra de una computadora." crlf))

(defrule oferta-camara-canon-amex
   (orden-compra (cliente ?cliente) (productos $?productos (camara (marca canon) $?)) (metodo-pago (banco amex)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas American Express para la compra de una cámara Canon." crlf))

(defrule descuento-disco-duro-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 15% de descuento en disco duro externo por la compra de una computadora." crlf))

(defrule oferta-tv-samsung-banorte
   (orden-compra (cliente ?cliente) (productos $?productos (televisor (marca samsung) $?)) (metodo-pago (banco banorte)))
   =>
   (printout t "Oferta: 18 meses sin intereses con tarjetas Banorte para la compra de un televisor Samsung." crlf))

(defrule descuento-software-productividad-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 20% de descuento en software de productividad por la compra de una computadora." crlf))

(defrule oferta-xbox-scotiabank
   (orden-compra (cliente ?cliente) (productos $?productos (consola (marca microsoft) (modelo Xbox) $?)) (metodo-pago (banco scotiabank)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas Scotiabank para la compra de una consola Xbox." crlf))

(defrule descuento-protector-pantalla-tablet
   (orden-compra (cliente ?cliente) (productos $?productos (tablet $?)))
   =>
   (printout t "Descuento: 15% de descuento en protector de pantalla por la compra de una tablet." crlf))

(defrule oferta-google-home-banamex
   (orden-compra (cliente ?cliente) (productos $?productos (smart-speaker (marca google) (modelo Home) $?)) (metodo-pago (banco banamex)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas Banamex para la compra de un Google Home." crlf))

(defrule descuento-router-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 15% de descuento en router por la compra de una computadora." crlf))

(defrule oferta-audifonos-bose-liverpool
   (orden-compra (cliente ?cliente) (productos $?productos (audifonos (marca bose) $?)) (metodo-pago (banco liverpool)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas Liverpool para la compra de audífonos Bose." crlf))

(defrule descuento-monitor-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 10% de descuento en monitor por la compra de una computadora." crlf))

(defrule oferta-kindle-hsbc
   (orden-compra (cliente ?cliente) (productos $?productos (ebook-reader (marca amazon) (modelo Kindle) $?)) (metodo-pago (banco hsbc)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas HSBC para la compra de un Kindle." crlf))

(defrule descuento-software-antivirus-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 20% de descuento en software antivirus por la compra de una computadora." crlf))

(defrule oferta-impresora-epson-santander
   (orden-compra (cliente ?cliente) (productos $?productos (impresora (marca epson) $?)) (metodo-pago (banco santander)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas Santander para la compra de una impresora Epson." crlf))

(defrule descuento-camara-web-computadora
   (orden-compra (cliente ?cliente) (productos $?productos (computadora $?)))
   =>
   (printout t "Descuento: 10% de descuento en cámara web por la compra de una computadora." crlf))

(defrule oferta-impresora-canon-amex
   (orden-compra (cliente ?cliente) (productos $?productos (impresora (marca canon) $?)) (metodo-pago (banco amex)))
   =>
   (printout t "Oferta: 12 meses sin intereses con tarjetas American Express para la compra de una impresora Canon." crlf))

(defrule descuento-bateria-smartphone
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone $?)))
   =>
   (printout t "Descuento: 15% de descuento en batería externa por la compra de un smartphone." crlf))

(defrule oferta-camara-nikon-banorte
   (orden-compra (cliente ?cliente) (productos $?productos (camara (marca nikon) $?)) (metodo-pago (


(assert (orden-compra (cliente "Juan Perez") 
                      (productos (smartphone (marca apple) (modelo iPhone15) (color rojo) (precio 17000))
                                 (computadora (marca apple) (modelo MacBookAir) (color gris) (precio 25000)))
                      (metodo-pago (banco banamex) (tipo visa))))

(run)

;;Razonamiento
(defrule segmentar-cliente-menudista
   (cliente (nombre ?nombre) (tipo menudista))
   =>
   (printout t "Cliente: " ?nombre " es menudista." crlf))

(defrule segmentar-cliente-mayorista
   (cliente (nombre ?nombre) (tipo mayorista))
   =>
   (printout t "Cliente: " ?nombre " es mayorista." crlf))

(defrule segmentar-cliente-producto
   (orden-compra (cliente ?cliente) (productos $?productos (smartphone $?)))
   =>
   (printout t "Cliente: " ?cliente " ha comprado un smartphone." crlf))

