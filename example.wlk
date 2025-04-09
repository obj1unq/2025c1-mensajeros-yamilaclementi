object empresaDeMensajeria {
  var destino = puenteDeBrooklyn
  var mensajero = chuckNorris
  
  method destino(_destino) {
    destino = _destino
  }
  
  method destino() = destino
  
  method mensajero(_mensajero) {
    mensajero = _mensajero
  }
  
  method mensajero() = mensajero
  
  method puedeSerEntregado(paquete) = paquete.pago() && destino.puedePasarEl(
    mensajero
  )
}

object paquete {
  var pago = true
  
  method pago(_pago) {
    pago = _pago
  }
  
  method pago() = pago
}

object puenteDeBrooklyn {
  method puedePasarEl(mensajero) = mensajero.peso() <= 1000
}

object matrix {
  method puedePasarEl(mensajero) = mensajero.llamar()
}

object chuckNorris {
  const peso = 900
  const llamar = true
  
  method peso() = peso
  
  method llamar() = llamar
}

object neo {
  const peso = 0
  var credito = 100
  
  method peso() = peso
  
  method credito(_credito) {
    credito = _credito
  }
  
  method credito() = credito
  
  method llamar() = credito > 0
}

object lincolnHowk {
  var peso = 200
  var transporte = bici
  
  method transporte(_transporte) {
    transporte = _transporte
  }
  
  method transporte() = transporte
  
  method llamar() = false
  
  method peso(_peso) {
    peso = _peso
  }
  
  method peso() = peso + transporte.peso()
}

object bici {
  method peso() = 10
}

object camion {
  const pesoBase = 500
  const pesoAcoplado = 500
  var cantidadDeAcoplados = 1
  
  method cantidadDeAcoplados(_cantidadDeAcoplados) {
    cantidadDeAcoplados = _cantidadDeAcoplados
  }
  
  method cantidadDeAcoplados() = cantidadDeAcoplados
  
  method peso() = pesoBase + self.pesoTotalDeAcoplados()
  
  method pesoTotalDeAcoplados() = pesoAcoplado * cantidadDeAcoplados
}


// ESTO ME LO DEJO DE NOTA PARA ACOSTUMBRARME AL FORMATEO
// object empresaDeMensajeria {
//     var destino = puenteDeBrooklyn
//     var mensajero = chuckNorris

//     method destino(_destino) {
//         destino = _destino
//     }

//     method destino() {
//         return destino
//     }

//     method mensajero(_mensajero) {
//         mensajero = _mensajero
//     }

//     method mensajero() {
//         return mensajero
//     }

//     method puedeSerEntregado(paquete) {
//         return paquete.pago() && destino.puedePasarEl(mensajero)
//     }
// }

// object paquete {
//     var pago = true

//     method pago(_pago) {
//         pago = _pago
//     }

//     method pago() {
//         return pago
//     }
// } 

// object puenteDeBrooklyn {

//     method puedePasarEl(mensajero) {
//         return mensajero.peso() <= 1000
//     }
// }

// object matrix {

//     method puedePasarEl(mensajero) {
//         return mensajero.llamar()
//     }
// }

// object chuckNorris {
//     const peso = 900
//     const llamar = true

//     method peso() {
//         return peso
//     }

//     method llamar() {
//         return llamar
//     }
// }

// object neo {
//     const peso = 0
//     var credito = 100 

//     method peso() {
//         return peso
//     }

//     method credito(_credito) {
//         credito = _credito
//     }

//     method credito() {
//         return credito
//     }

//     method llamar() {
//         return credito > 0
//     }
// }

// object lincolnHowk {
// 	var peso = 200
//     var transporte = bici

//     method transporte(_transporte) {
//         transporte = _transporte
//     }

//     method transporte() {
//         return transporte
//     }
    
//     method llamar() {
//         return false
//     }

//     method peso(_peso) {
//         peso = _peso
//     }

//     method peso() {
//         return peso + transporte.peso()
//     }
// }

// object bici {
    
//     method peso() {
//         return 10
//     }
// }

// object camion {
//     const pesoBase = 500
//     const pesoAcoplado = 500 
//     var cantidadDeAcoplados = 1

//     method cantidadDeAcoplados(_cantidadDeAcoplados) {
//         cantidadDeAcoplados = _cantidadDeAcoplados
//     }

//     method cantidadDeAcoplados() {
//         return cantidadDeAcoplados
//     }

//     method peso() {
//         return pesoBase + self.pesoTotalDeAcoplados()
//     }

//     method pesoTotalDeAcoplados() {
//         return pesoAcoplado * cantidadDeAcoplados
//     }
// }
