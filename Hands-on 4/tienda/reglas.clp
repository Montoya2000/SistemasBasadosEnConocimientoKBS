(defrule tarjeta-expirada
   (tarjeta-de-credito (banco ?banco) (tipo ?tipo) (fecha-expiracion ?fecha))
   (test (< ?fecha 2024-01-01))
   =>
   (printout t "La tarjeta " ?banco " " ?tipo " está expirada." crlf))

(defrule ipadpro-hsbc-24-meses
   (orden-de-compra (items ?items))
   (test (member$ (tablet (marca apple) (modelo iPadPro) (color blanco) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco hsbc) (tipo mastercard) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 24 meses sin intereses para iPad Pro con tarjeta HSBC Mastercard." crlf))

(defrule galaxywatch-scotiabank-12-meses
   (orden-de-compra (items ?items))
   (test (member$ (smartwatch (marca samsung) (modelo GalaxyWatch) (color azul) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco scotiabank) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 12 meses sin intereses para Galaxy Watch con tarjeta Scotiabank VISA." crlf))

(defrule dell-xps13-pixel7-vales
   (orden-de-compra (items ?items))
   (test (member$ (laptop (marca dell) (modelo XPS13) (color negro) ?p1) ?items))
   (test (member$ (smartphone (marca google) (modelo Pixel7) (color verde) ?p2) ?items))
   =>
   (bind ?total (+ ?p1 ?p2))
   (bind ?vales (/ ?total 1000))
   (printout t "Oferta: " ?vales " vales de 100 pesos por la compra de Dell XPS 13 y Pixel 7 al contado." crlf))

(defrule galaxy-tab-banorte-18-meses
   (orden-de-compra (items ?items))
   (test (member$ (tablet (marca samsung) (modelo GalaxyTab) (color negro) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco banorte) (tipo american-express) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 18 meses sin intereses para Galaxy Tab con tarjeta Banorte American Express." crlf))

(defrule mi11-santander-descuento
   (orden-de-compra (items ?items))
   (test (member$ (smartphone (marca xiaomi) (modelo Mi11) (color blanco) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco santander) (tipo mastercard) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 10% de descuento para Mi11 con tarjeta Santander Mastercard." crlf))

(defrule hp-pavilion-banamex-12-meses
   (orden-de-compra (items ?items))
   (test (member$ (laptop (marca hp) (modelo Pavilion) (color plata) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco banamex) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 12 meses sin intereses para HP Pavilion con tarjeta Banamex VISA." crlf))

(defrule versa3-liverpool-12-meses
   (orden-de-compra (items ?items))
   (test (member$ (smartwatch (marca fitbit) (modelo Versa3) (color negro) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco liverpool) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 12 meses sin intereses para Fitbit Versa 3 con tarjeta Liverpool VISA." crlf))

(defrule surfacepro-invex-descuento
   (orden-de-compra (items ?items))
   (test (member$ (tablet (marca microsoft) (modelo SurfacePro) (color plata) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco invex) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 15% de descuento para Surface Pro con tarjeta Invex VISA." crlf))

(defrule oneplus9pro-hsbc-24-meses
   (orden-de-compra (items ?items))
   (test (member$ (smartphone (marca oneplus) (modelo 9Pro) (color negro) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco hsbc) (tipo american-express) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 24 meses sin intereses para OnePlus 9 Pro con tarjeta HSBC American Express." crlf))

(defrule thinkpad-scotiabank-12-meses
   (orden-de-compra (items ?items))
   (test (member$ (laptop (marca lenovo) (modelo ThinkPad) (color negro) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco scotiabank) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 12 meses sin intereses para Lenovo ThinkPad con tarjeta Scotiabank VISA." crlf))

(defrule matepadpro-bbva-descuento
   (orden-de-compra (items ?items))
   (test (member$ (tablet (marca huawei) (modelo MatePadPro) (color verde) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco bbva) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 15% de descuento para MatePad Pro con tarjeta BBVA VISA." crlf))

(defrule xperia5-banorte-descuento
   (orden-de-compra (items ?items))
   (test (member$ (smartphone (marca sony) (modelo Xperia5) (color azul) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco banorte) (tipo american-express) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 15% de descuento para Sony Xperia 5 con tarjeta Banorte American Express." crlf))

(defrule zenbook-hsbc-18-meses
   (orden-de-compra (items ?items))
   (test (member$ (laptop (marca asus) (modelo ZenBook) (color gris) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco hsbc) (tipo mastercard) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 18 meses sin intereses para Asus ZenBook con tarjeta HSBC Mastercard." crlf))

(defrule fenix6-scotiabank-12-meses
   (orden-de-compra (items ?items))
   (test (member$ (smartwatch (marca garmin) (modelo Fenix6) (color negro) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco scotiabank) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 12 meses sin intereses para Garmin Fenix 6 con tarjeta Scotiabank VISA." crlf))

(defrule tabp11-banamex-12-meses
   (orden-de-compra (items ?items))
   (test (member$ (tablet (marca lenovo) (modelo TabP11) (color blanco) ?p) ?items))
   (test (member$ (tarjeta-de-credito (banco banamex) (tipo visa) (fecha-expiracion ?f)) ?items))
   =>
   (printout t "Oferta: 12 meses sin intereses para Lenovo Tab P11 con tarjeta Banamex VISA." crlf))

(defrule descuento-accesorios-laptops
   (orden-de-compra (items ?items))
   (test (member$ (laptop ?marca ?modelo ?color ?p) ?items))
   =>
   (printout t "Descuento del 10% en accesorios para la compra de cualquier laptop." crlf))

(defrule descuento-accesorios-smartphones
   (orden-de-compra (items ?items))
   (test (member$ (smartphone ?marca ?modelo ?color ?p) ?items))
   =>
   (printout t "Descuento del 15% en accesorios para la compra de cualquier smartphone." crlf))

(defrule descuento-especial-clientes-vip
   (cliente (id ?id) (tipo vip))
   =>
   (printout t "Descuento especial del 20% para clientes VIP." crlf))

(defrule descuento-especial-clientes-mayoristas
   (cliente (id ?id) (tipo mayorista))
   =>
   (printout t "Descuento especial para clientes mayoristas." crlf))
