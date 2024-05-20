(deffacts tarjetas-credito
   (tarjeta-de-credito (banco "hsbc") (tipo "mastercard") (fecha-expiracion "2024-11-01"))
   (tarjeta-de-credito (banco "scotiabank") (tipo "visa") (fecha-expiracion "2026-05-15"))
   (tarjeta-de-credito (banco "bbva") (tipo "visa") (fecha-expiracion "2023-08-30"))
   (tarjeta-de-credito (banco "banorte") (tipo "american-express") (fecha-expiracion "2025-09-20"))
   (tarjeta-de-credito (banco "santander") (tipo "mastercard") (fecha-expiracion "2024-07-12"))
   (tarjeta-de-credito (banco "banamex") (tipo "visa") (fecha-expiracion "2025-02-28"))
   (tarjeta-de-credito (banco "liverpool") (tipo "visa") (fecha-expiracion "2025-10-15"))
   (tarjeta-de-credito (banco "invex") (tipo "visa") (fecha-expiracion "2023-04-11"))
   (tarjeta-de-credito (banco "hsbc") (tipo "american-express") (fecha-expiracion "2026-01-01")))

(deffacts cupones
   (vale (valor 150))
   (vale (valor 250))
   (vale (valor 350))
   (vale (valor 450))
   (vale (valor 500))
   (vale (valor 600))
   (vale (valor 700))
   (vale (valor 800))
   (vale (valor 900))
   (vale (valor 1000))
   (vale (valor 1100))
   (vale (valor 1200))
   (vale (valor 1300))
   (vale (valor 1400))
   (vale (valor 1500))
   (vale (valor 1600))
   (vale (valor 1700))
   (vale (valor 1800))
   (vale (valor 1900))
   (vale (valor 2000)))

(deffacts compras-realizadas
   (orden-de-compra 
      (cliente-id 3) 
      (items (tablet (marca "apple") (modelo "iPadPro") (color "blanco") (precio 20000)) 
             (tarjeta-de-credito (banco "hsbc") (tipo "mastercard") (fecha-expiracion "2024-11-01"))))
   (orden-de-compra 
      (cliente-id 4) 
      (items (smartwatch (marca "samsung") (modelo "GalaxyWatch") (color "azul") (precio 10000)) 
             (tarjeta-de-credito (banco "scotiabank") (tipo "visa") (fecha-expiracion "2026-05-15"))))
   (orden-de-compra 
      (cliente-id 3) 
      (items (laptop (marca "dell") (modelo "XPS13") (color "negro") (precio 30000)) 
             (smartphone (marca "google") (modelo "Pixel7") (color "verde") (precio 22000))))
   (orden-de-compra 
      (cliente-id 5) 
      (items (tablet (marca "samsung") (modelo "GalaxyTab") (color "negro") (precio 15000)) 
             (tarjeta-de-credito (banco "banorte") (tipo "american-express") (fecha-expiracion "2025-09-20"))))
   (orden-de-compra 
      (cliente-id 6) 
      (items (smartphone (marca "xiaomi") (modelo "Mi11") (color "blanco") (precio 12000)) 
             (tarjeta-de-credito (banco "santander") (tipo "mastercard") (fecha-expiracion "2024-07-12"))))
   (orden-de-compra 
      (cliente-id 7) 
      (items (laptop (marca "hp") (modelo "Pavilion") (color "plata") (precio 18000)) 
             (tarjeta-de-credito (banco "banamex") (tipo "visa") (fecha-expiracion "2025-02-28"))))
   (orden-de-compra 
      (cliente-id 8) 
      (items (smartwatch (marca "fitbit") (modelo "Versa3") (color "negro") (precio 8000)) 
             (tarjeta-de-credito (banco "liverpool") (tipo "visa") (fecha-expiracion "2025-10-15"))))
   (orden-de-compra 
      (cliente-id 9) 
      (items (tablet (marca "microsoft") (modelo "SurfacePro") (color "plata") (precio 25000)) 
             (tarjeta-de-credito (banco "invex") (tipo "visa") (fecha-expiracion "2023-04-11"))))
   (orden-de-compra 
      (cliente-id 10) 
      (items (smartphone (marca "oneplus") (modelo "9Pro") (color "negro") (precio 17000)) 
             (tarjeta-de-credito (banco "hsbc") (tipo "american-express") (fecha-expiracion "2026-01-01"))))
   (orden-de-compra 
      (cliente-id 11) 
      (items (laptop (marca "lenovo") (modelo "ThinkPad") (color "negro") (precio 21000)) 
             (tarjeta-de-credito (banco "scotiabank") (tipo "visa") (fecha-expiracion "2026-05-15"))))
   (orden-de-compra 
      (cliente-id 12) 
      (items (tablet (marca "huawei") (modelo "MatePadPro") (color "verde") (precio 19000)) 
             (tarjeta-de-credito (banco "bbva") (tipo "visa") (fecha-expiracion "2023-08-30"))))
   (orden-de-compra 
      (cliente-id 13) 
      (items (smartphone (marca "sony") (modelo "Xperia5") (color "azul") (precio 20000)) 
             (tarjeta-de-credito (banco "banorte") (tipo "american-express") (fecha-expiracion "2025-09-20"))))
   (orden-de-compra 
      (cliente-id 14) 
      (items (laptop (marca "asus") (modelo "ZenBook") (color "gris") (precio 22000)) 
             (tarjeta-de-credito (banco "hsbc") (tipo "mastercard") (fecha-expiracion "2024-11-01"))))
   (orden-de-compra 
      (cliente-id 15) 
      (items (smartwatch (marca "garmin") (modelo "Fenix6") (color "negro") (precio 15000)) 
             (tarjeta-de-credito (banco "scotiabank") (tipo "visa") (fecha-expiracion "2026-05-15"))))
   (orden-de-compra 
      (cliente-id 16) 
      (items (tablet (marca "lenovo") (modelo "TabP11") (color "blanco") (precio 12000)) 
             (tarjeta-de-credito (banco "banamex") (tipo "visa") (fecha-expiracion "2025-02-28")))))
