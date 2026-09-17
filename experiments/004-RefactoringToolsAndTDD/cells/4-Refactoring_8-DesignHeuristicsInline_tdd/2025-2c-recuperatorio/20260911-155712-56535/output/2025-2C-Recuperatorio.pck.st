'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 4:43:55 pm'!
'Description '!
!provides: '2025-2C-Recuperatorio' 1 0!
SystemOrganization addCategory: #'2025-2C-Recuperatorio'!
SystemOrganization addCategory: #'2025-2C-Recuperatorio-Tests'!


!classDefinition: #Buscador category: #'2025-2C-Recuperatorio'!
Object subclass: #Buscador
	instanceVariableNames: 'definiciones descuentos contadorDePasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Buscador class' category: #'2025-2C-Recuperatorio'!
Buscador class
	instanceVariableNames: ''!

!classDefinition: #DefinicionDeVuelo category: #'2025-2C-Recuperatorio'!
Object subclass: #DefinicionDeVuelo
	instanceVariableNames: 'codigo origen destino diasDeLaSemana horaDeSalida duracion costo'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DefinicionDeVuelo class' category: #'2025-2C-Recuperatorio'!
DefinicionDeVuelo class
	instanceVariableNames: ''!

!classDefinition: #DescuentoAplicado category: #'2025-2C-Recuperatorio'!
Object subclass: #DescuentoAplicado
	instanceVariableNames: 'descuento monto'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoAplicado class' category: #'2025-2C-Recuperatorio'!
DescuentoAplicado class
	instanceVariableNames: ''!

!classDefinition: #DescuentoPorcentual category: #'2025-2C-Recuperatorio'!
Object subclass: #DescuentoPorcentual
	instanceVariableNames: 'porcentaje'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoPorcentual class' category: #'2025-2C-Recuperatorio'!
DescuentoPorcentual class
	instanceVariableNames: ''!

!classDefinition: #DescuentoPorFechaEspecial category: #'2025-2C-Recuperatorio'!
DescuentoPorcentual subclass: #DescuentoPorFechaEspecial
	instanceVariableNames: 'fecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoPorFechaEspecial class' category: #'2025-2C-Recuperatorio'!
DescuentoPorFechaEspecial class
	instanceVariableNames: ''!

!classDefinition: #DescuentoPorTramo category: #'2025-2C-Recuperatorio'!
DescuentoPorcentual subclass: #DescuentoPorTramo
	instanceVariableNames: 'origen destino'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoPorTramo class' category: #'2025-2C-Recuperatorio'!
DescuentoPorTramo class
	instanceVariableNames: ''!

!classDefinition: #Tramo category: #'2025-2C-Recuperatorio'!
Object subclass: #Tramo
	instanceVariableNames: 'origen destino fecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Tramo class' category: #'2025-2C-Recuperatorio'!
Tramo class
	instanceVariableNames: ''!

!classDefinition: #Viaje category: #'2025-2C-Recuperatorio'!
Object subclass: #Viaje
	instanceVariableNames: 'vuelos descuentos'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Viaje class' category: #'2025-2C-Recuperatorio'!
Viaje class
	instanceVariableNames: ''!

!classDefinition: #Vuelo category: #'2025-2C-Recuperatorio'!
Object subclass: #Vuelo
	instanceVariableNames: 'definicion fecha pasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Vuelo class' category: #'2025-2C-Recuperatorio'!
Vuelo class
	instanceVariableNames: ''!

!classDefinition: #TodasLasCombinacionesTest category: #'2025-2C-Recuperatorio'!
TestCase subclass: #TodasLasCombinacionesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'TodasLasCombinacionesTest class' category: #'2025-2C-Recuperatorio'!
TodasLasCombinacionesTest class
	instanceVariableNames: ''!

!classDefinition: #BuscadorTest category: #'2025-2C-Recuperatorio-Tests'!
TestCase subclass: #BuscadorTest
	instanceVariableNames: 'asientosDisponibles'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'BuscadorTest class' category: #'2025-2C-Recuperatorio-Tests'!
BuscadorTest class
	instanceVariableNames: ''!


!Buscador methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:38:04 pm (UTC)'!
initializeDefiniciones: unasDefiniciones descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	definiciones := unasDefiniciones.
	descuentos := unosDescuentos.
	contadorDePasajeros := unContadorDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:35:58 pm (UTC)'!
viajesDeIdaYVueltaDesde: unOrigen hasta: unDestino saliendo: unaFechaDeIda volviendo: unaFechaDeVuelta para: unaCantidadDePasajeros

	^self
		viajesMultitramoPor: (Array
			with: (Tramo desde: unOrigen hasta: unDestino el: unaFechaDeIda)
			with: (Tramo desde: unDestino hasta: unOrigen el: unaFechaDeVuelta))
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:35:58 pm (UTC)'!
viajesDeSoloIdaDesde: unOrigen hasta: unDestino el: unaFecha para: unaCantidadDePasajeros

	^self
		viajesMultitramoPor: (Array with: (Tramo desde: unOrigen hasta: unDestino el: unaFecha))
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:42:58 pm (UTC)'!
viajesMultitramoPor: unosTramos para: unaCantidadDePasajeros

	^((unosTramos collect: [:tramo | tramo vuelosPara: unaCantidadDePasajeros en: self]) todasLasCombinaciones
		select: [:vuelos | Viaje sePuedeFormarCon: vuelos])
		collect: [:vuelos | Viaje vuelos: vuelos descuentos: descuentos]! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:32:14 pm (UTC)'!
vuelosDesde: unOrigen hasta: unDestino el: unaFecha para: unaCantidadDePasajeros

	^(definiciones select: [:definicion |
		(definicion vuelaDesde: unOrigen hasta: unDestino el: unaFecha) and: [
			definicion tieneLugarPara: unaCantidadDePasajeros el: unaFecha segun: contadorDePasajeros]])
		collect: [:definicion | definicion vueloEl: unaFecha para: unaCantidadDePasajeros]! !

!Buscador class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:38:04 pm (UTC)'!
definiciones: unasDefiniciones descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	^self new
		initializeDefiniciones: unasDefiniciones
		descuentos: unosDescuentos
		contadorDePasajeros: unContadorDePasajeros! !

!DefinicionDeVuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:27:46 pm (UTC)'!
initializeCodigo: unCodigo desde: unOrigen hasta: unDestino saleLos: unosDiasDeLaSemana a: unaHoraDeSalida dura: unaDuracion cuesta: unCosto

	codigo := unCodigo.
	origen := unOrigen.
	destino := unDestino.
	diasDeLaSemana := unosDiasDeLaSemana.
	horaDeSalida := unaHoraDeSalida.
	duracion := unaDuracion.
	costo := unCosto! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:46 pm (UTC)'!
codigo

	^codigo! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:32:01 pm (UTC)'!
costoPara: unaCantidadDePasajeros

	^costo * unaCantidadDePasajeros! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:31:38 pm (UTC)'!
destino

	^destino! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:31:04 pm (UTC)'!
llegadaEl: unaFecha

	^(self salidaEl: unaFecha) next: duracion! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:31:22 pm (UTC)'!
origen

	^origen! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:30:19 pm (UTC)'!
salidaEl: unaFecha

	^GregorianDateTime date: unaFecha timeOfDay: horaDeSalida! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:32:14 pm (UTC)'!
vueloEl: unaFecha para: unaCantidadDePasajeros

	^Vuelo definicion: self fecha: unaFecha pasajeros: unaCantidadDePasajeros! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:40:51 pm (UTC)'!
recorreDesde: unOrigen hasta: unDestino

	^origen = unOrigen and: [destino = unDestino]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:29:47 pm (UTC)'!
tieneLugarPara: unaCantidadDePasajeros el: unaFecha segun: unContadorDePasajeros

	^(unContadorDePasajeros asientosDisponiblesPara: codigo el: unaFecha) >= unaCantidadDePasajeros! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:41:05 pm (UTC)'!
vuelaDesde: unOrigen hasta: unDestino el: unaFecha

	^(self recorreDesde: unOrigen hasta: unDestino) and: [self vuelaEl: unaFecha]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:41:05 pm (UTC)'!
vuelaEl: unaFecha

	^diasDeLaSemana includes: unaFecha day! !

!DefinicionDeVuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:27:46 pm (UTC)'!
codigo: unCodigo desde: unOrigen hasta: unDestino saleLos: unosDiasDeLaSemana a: unaHoraDeSalida dura: unaDuracion cuesta: unCosto

	^self new
		initializeCodigo: unCodigo
		desde: unOrigen
		hasta: unDestino
		saleLos: unosDiasDeLaSemana
		a: unaHoraDeSalida
		dura: unaDuracion
		cuesta: unCosto! !

!DescuentoAplicado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:42:03 pm (UTC)'!
initializeDescuento: unDescuento monto: unMonto

	descuento := unDescuento.
	monto := unMonto! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:03 pm (UTC)'!
descuento

	^descuento! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:03 pm (UTC)'!
monto

	^monto! !

!DescuentoAplicado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:42:03 pm (UTC)'!
descuento: unDescuento monto: unMonto

	^self new initializeDescuento: unDescuento monto: unMonto! !

!DescuentoPorcentual methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:42:03 pm (UTC)'!
aplicadoA: unVuelo

	^DescuentoAplicado descuento: self monto: (self montoPara: unVuelo)! !

!DescuentoPorcentual methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:40:18 pm (UTC)'!
montoPara: unVuelo

	^unVuelo costoBruto * porcentaje / 100! !

!DescuentoPorcentual methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:40:18 pm (UTC)'!
aplicaA: unVuelo

	self subclassResponsibility! !

!DescuentoPorFechaEspecial methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:38:04 pm (UTC)'!
initializePorcentaje: unPorcentaje el: unaFecha

	porcentaje := unPorcentaje.
	fecha := unaFecha! !

!DescuentoPorFechaEspecial methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:38:37 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo saleEl: fecha! !

!DescuentoPorFechaEspecial class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:38:04 pm (UTC)'!
porcentaje: unPorcentaje el: unaFecha

	^self new initializePorcentaje: unPorcentaje el: unaFecha! !

!DescuentoPorTramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:39:41 pm (UTC)'!
initializePorcentaje: unPorcentaje desde: unOrigen hasta: unDestino

	porcentaje := unPorcentaje.
	origen := unOrigen.
	destino := unDestino! !

!DescuentoPorTramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:40:51 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo recorreDesde: origen hasta: destino! !

!DescuentoPorTramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:39:41 pm (UTC)'!
porcentaje: unPorcentaje desde: unOrigen hasta: unDestino

	^self new initializePorcentaje: unPorcentaje desde: unOrigen hasta: unDestino! !

!Tramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:35:45 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino el: unaFecha

	origen := unOrigen.
	destino := unDestino.
	fecha := unaFecha! !

!Tramo methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:35:45 pm (UTC)'!
vuelosPara: unaCantidadDePasajeros en: unBuscador

	^unBuscador vuelosDesde: origen hasta: destino el: fecha para: unaCantidadDePasajeros! !

!Tramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:35:45 pm (UTC)'!
desde: unOrigen hasta: unDestino el: unaFecha

	^self new initializeDesde: unOrigen hasta: unDestino el: unaFecha! !

!Viaje methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:43:25 pm (UTC)'!
initializeVuelos: unosVuelos descuentos: unosDescuentos

	vuelos := unosVuelos.
	descuentos := unosDescuentos! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:43:10 pm (UTC)'!
codigos

	^vuelos collect: [:vuelo | vuelo codigo]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:43:10 pm (UTC)'!
costoBruto

	^vuelos sum: [:vuelo | vuelo costoBruto]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:38:04 pm (UTC)'!
costoNeto

	^self costoBruto - self montoDescontado! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:43:10 pm (UTC)'!
descuentosAplicados

	^vuelos
		inject: OrderedCollection new
		into: [:descuentosAplicados :vuelo |
			descuentosAplicados
				addAll: (vuelo descuentosAplicadosPor: descuentos);
				yourself]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:58 pm (UTC)'!
destino

	^vuelos last destino! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:58 pm (UTC)'!
llegada

	^vuelos last llegada! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:19 pm (UTC)'!
montoDescontado

	^self descuentosAplicados sum: [:descuentoAplicado | descuentoAplicado monto] ifEmpty: [0]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:58 pm (UTC)'!
origen

	^vuelos first origen! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:58 pm (UTC)'!
salida

	^vuelos first salida! !

!Viaje class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:43:25 pm (UTC)'!
vuelos: unosVuelos descuentos: unosDescuentos

	^self new initializeVuelos: unosVuelos descuentos: unosDescuentos! !

!Viaje class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:36:51 pm (UTC)'!
sePuedeFormarCon: unosVuelos

	^(unosVuelos allButFirst
		with: unosVuelos allButLast
		collect: [:vuelo :vueloAnterior | vuelo saleDespuesDeQueLlegue: vueloAnterior])
			allSatisfy: [:seConectan | seConectan]! !

!Vuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:32:14 pm (UTC)'!
initializeDefinicion: unaDefinicion fecha: unaFecha pasajeros: unaCantidadDePasajeros

	definicion := unaDefinicion.
	fecha := unaFecha.
	pasajeros := unaCantidadDePasajeros! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:30:28 pm (UTC)'!
codigo

	^definicion codigo! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:32:14 pm (UTC)'!
costoBruto

	^definicion costoPara: pasajeros! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:31:38 pm (UTC)'!
destino

	^definicion destino! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:31:04 pm (UTC)'!
llegada

	^definicion llegadaEl: fecha! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:31:22 pm (UTC)'!
origen

	^definicion origen! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:30:28 pm (UTC)'!
salida

	^definicion salidaEl: fecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:40:51 pm (UTC)'!
recorreDesde: unOrigen hasta: unDestino

	^definicion recorreDesde: unOrigen hasta: unDestino! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:36:39 pm (UTC)'!
saleDespuesDeQueLlegue: unVuelo

	^unVuelo llegada < self salida! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:38:37 pm (UTC)'!
saleEl: unaFecha

	^fecha = unaFecha! !

!Vuelo methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:42:03 pm (UTC)'!
descuentosAplicadosPor: unosDescuentos

	^(unosDescuentos select: [:descuento | descuento aplicaA: self])
		collect: [:descuento | descuento aplicadoA: self]! !

!Vuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:32:14 pm (UTC)'!
definicion: unaDefinicion fecha: unaFecha pasajeros: unaCantidadDePasajeros

	^self new initializeDefinicion: unaDefinicion fecha: unaFecha pasajeros: unaCantidadDePasajeros! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 9/Dec/2025, 2:30:10 pm (UTC)'!
test01ParaUnaColecciónDeUnElemento

	self 
		assert: (OrderedCollection with: #(1)) todasLasCombinaciones 
		equals: (OrderedCollection with: (OrderedCollection with: 1))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 9/Dec/2025, 2:30:14 pm (UTC)'!
test02ParaUnaColecciónDeMásDeUnElemento

	self 
		assert: (OrderedCollection with: #(1 2)) todasLasCombinaciones 
		equals: (OrderedCollection with: (OrderedCollection with: 1) with: (OrderedCollection with: 2))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 9/Dec/2025, 2:30:28 pm (UTC)'!
test03ParaDosColeccionesDeDosYUnElemento

	self 
		assert: (OrderedCollection with: #(1 2) with: #(3)) todasLasCombinaciones 
		equals: (OrderedCollection 
			with: (OrderedCollection with: 1 with: 3) 
			with: (OrderedCollection with: 2 with: 3))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 9/Dec/2025, 2:30:42 pm (UTC)'!
test04ParaDosColeccionesDeMásDeUnElemento

	self 
		assert: (OrderedCollection with: #(1 2) with: #(3 4)) todasLasCombinaciones 
		equals: (OrderedCollection 
			with: (OrderedCollection with: 1 with: 3) 
			with: (OrderedCollection with: 1 with: 4)
			with: (OrderedCollection with: 2 with: 3)
			with: (OrderedCollection with: 2 with: 4))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 9/Dec/2025, 2:30:54 pm (UTC)'!
test05CuandoHayUnaColecciónVacía

	self assert: (OrderedCollection with: #(1 2) with: #() with: #(3 4)) todasLasCombinaciones isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:26:51 pm (UTC)'!
test01NoSeOfrecenViajesDeSoloIdaSinDefinicionesDeVuelo

	self assert: (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: #()) isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:27:24 pm (UTC)'!
test02SeOfreceViajeDeSoloIdaDeLaDefinicionQueVuelaDelOrigenAlDestinoEseDia

	self
		assert: (self codigosDe: (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ar100)))
		equals: #((AR100))! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:28:03 pm (UTC)'!
test03NoSeOfreceViajeDeSoloIdaDeUnaDefinicionQueSaleDeOtroOrigen

	| viajes |
	
	viajes := (self buscadorCon: (Array with: self ar100))
		viajesDeSoloIdaDesde: #Madrid
		hasta: #Barcelona
		el: December ninth, 2025
		para: 5.
	
	self assert: viajes isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:28:20 pm (UTC)'!
test04NoSeOfreceViajeDeSoloIdaDeUnaDefinicionQueLlegaAOtroDestino

	| viajes |
	
	viajes := (self buscadorCon: (Array with: self ar100))
		viajesDeSoloIdaDesde: #Ezeiza
		hasta: #Madrid
		el: December ninth, 2025
		para: 5.
	
	self assert: viajes isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:28:42 pm (UTC)'!
test05NoSeOfreceViajeDeSoloIdaDeUnaDefinicionQueNoVuelaEseDiaDeLaSemana

	| viajes |
	
	viajes := (self buscadorCon: (Array with: self ib300))
		viajesDeSoloIdaDesde: #Ezeiza
		hasta: #Barcelona
		el: December thirteenth, 2025
		para: 5.
	
	self assert: viajes isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:29:26 pm (UTC)'!
test06NoSeOfreceViajeDeSoloIdaDeUnVueloSinAsientosParaTodosLosPasajeros

	self registrarQueQuedan: 4 asientosEn: #IB300 el: December ninth, 2025.
	
	self assert: (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ib300)) isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:30:05 pm (UTC)'!
test07ElViajeDeSoloIdaSaleLaFechaPedidaALaHoraDeSalidaDeLaDefinicion

	| viaje |
	
	viaje := (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ar100)) first.
	
	self
		assert: viaje salida
		equals: (GregorianDateTime date: December ninth, 2025 timeOfDay: (TimeOfDay hours: 22))! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:30:55 pm (UTC)'!
test08ElViajeDeSoloIdaLlegaLuegoDeLaDuracionDelVueloDesdeSuSalida

	| viaje |
	
	viaje := (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ar100)) first.
	
	self
		assert: viaje llegada
		equals: (GregorianDateTime date: December tenth, 2025 timeOfDay: (TimeOfDay hours: 10))! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:31:14 pm (UTC)'!
test09ElViajeDeSoloIdaSaleDelOrigenDeSuVuelo

	| viaje |
	
	viaje := (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ar100)) first.
	
	self assert: viaje origen equals: #Ezeiza! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:31:30 pm (UTC)'!
test10ElViajeDeSoloIdaLlegaAlDestinoDeSuVuelo

	| viaje |
	
	viaje := (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ar100)) first.
	
	self assert: viaje destino equals: #Barcelona! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:31:47 pm (UTC)'!
test11ElCostoBrutoDelViajeDeSoloIdaEsElCostoDelVueloPorLaCantidadDePasajeros

	| viaje |
	
	viaje := (self viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: (Array with: self ar100)) first.
	
	self assert: viaje costoBruto equals: 5000 * dollar! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:32:32 pm (UTC)'!
test12SeOfreceViajeDeIdaYVueltaFormadoPorElVueloDeIdaYElDeVuelta

	| viajes |
	
	viajes := (self buscadorCon: (Array with: self ar100 with: self ar101))
		viajesDeIdaYVueltaDesde: #Ezeiza
		hasta: #Barcelona
		saliendo: December ninth, 2025
		volviendo: December fifteenth, 2025
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #((AR100 AR101))! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:33:12 pm (UTC)'!
test13SeOfrecenViajesMultitramoConTodasLasCombinacionesDeLosVuelosDeCadaTramo

	| viajes |
	
	viajes := (self buscadorCon: self todasLasDefiniciones)
		viajesMultitramoPor: (Array
			with: (Tramo desde: #Ezeiza hasta: #Barcelona el: December ninth, 2025)
			with: (Tramo desde: #Madrid hasta: #Paris el: December fifteenth, 2025)
			with: (Tramo desde: #Barcelona hasta: #Ezeiza el: December nineteenth, 2025))
		para: 1.
	
	self
		assert: (self codigosDe: viajes)
		equals: #((AR100 IB503 AR101) (AR100 IB503 IB301) (IB300 IB503 AR101) (IB300 IB503 IB301))! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:36:15 pm (UTC)'!
test14NoSeOfrecenViajesMultitramoConUnVueloQueSaleAntesDeQueLlegueElDelTramoAnterior

	| viajes |
	
	viajes := (self buscadorCon: self todasLasDefiniciones)
		viajesMultitramoPor: (Array
			with: (Tramo desde: #Ezeiza hasta: #Barcelona el: December ninth, 2025)
			with: (Tramo desde: #Barcelona hasta: #Ezeiza el: December ninth, 2025))
		para: 1.
	
	self assert: (self codigosDe: viajes) equals: #((IB300 AR101) (IB300 IB301))! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:37:24 pm (UTC)'!
test15ElCostoNetoDelViajeDescuentaElPorcentajeDeLaFechaEspecialEnQueSaleSuVuelo

	| viaje |
	
	viaje := self viajeDeSoloIdaEnAR100El9DeDiciembreCon:
		(Array with: (DescuentoPorFechaEspecial porcentaje: 10 el: December ninth, 2025)).
	
	self assert: viaje costoNeto equals: 4500 * dollar! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:38:18 pm (UTC)'!
test16ElCostoNetoDelViajeNoDescuentaUnaFechaEspecialDistintaALaDeSalidaDeSuVuelo

	| viaje |
	
	viaje := self viajeDeSoloIdaEnAR100El9DeDiciembreCon:
		(Array with: (DescuentoPorFechaEspecial porcentaje: 10 el: December twentyfifth, 2025)).
	
	self assert: viaje costoNeto equals: 5000 * dollar! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:39:17 pm (UTC)'!
test17ElCostoNetoDelViajeDescuentaElPorcentajeDelTramoQueRecorreSuVuelo

	| viaje |
	
	viaje := self viajeDeSoloIdaEnAR100El9DeDiciembreCon:
		(Array with: (DescuentoPorTramo porcentaje: 20 desde: #Ezeiza hasta: #Barcelona)).
	
	self assert: viaje costoNeto equals: 4000 * dollar! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:40:34 pm (UTC)'!
test18ElCostoNetoDelViajeNoDescuentaUnTramoDistintoDelQueRecorreSuVuelo

	| viaje |
	
	viaje := self viajeDeSoloIdaEnAR100El9DeDiciembreCon:
		(Array with: (DescuentoPorTramo porcentaje: 20 desde: #Madrid hasta: #Paris)).
	
	self assert: viaje costoNeto equals: 5000 * dollar! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 7:41:28 pm (UTC)'!
test19ElViajeInformaCadaDescuentoAplicadoConSuMontoSobreElCostoBruto

	| descuentoPorFecha descuentoPorTramo viaje |
	
	descuentoPorFecha := DescuentoPorFechaEspecial porcentaje: 10 el: December ninth, 2025.
	descuentoPorTramo := DescuentoPorTramo porcentaje: 20 desde: #Ezeiza hasta: #Barcelona.
	viaje := self viajeDeSoloIdaEnAR100El9DeDiciembreCon: (Array with: descuentoPorFecha with: descuentoPorTramo).
	
	self
		assert: (self montosPorDescuentoDe: viaje)
		equals: (Array with: descuentoPorFecha -> (500 * dollar) with: descuentoPorTramo -> (1000 * dollar))! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:38:04 pm (UTC)'!
buscadorCon: unasDefiniciones

	^self buscadorCon: unasDefiniciones descuentos: #()! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:37:24 pm (UTC)'!
buscadorCon: unasDefiniciones descuentos: unosDescuentos

	^Buscador
		definiciones: unasDefiniciones
		descuentos: unosDescuentos
		contadorDePasajeros: self! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:27:24 pm (UTC)'!
codigosDe: unosViajes

	^(unosViajes collect: [:viaje | viaje codigos asArray]) asArray! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:41:28 pm (UTC)'!
montosPorDescuentoDe: unViaje

	^(unViaje descuentosAplicados collect: [:descuentoAplicado |
		descuentoAplicado descuento -> descuentoAplicado monto]) asArray! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:29:26 pm (UTC)'!
registrarQueQuedan: unaCantidadDeAsientos asientosEn: unCodigo el: unaFecha

	asientosDisponibles at: (Array with: unCodigo with: unaFecha) put: unaCantidadDeAsientos! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:37:24 pm (UTC)'!
viajeDeSoloIdaEnAR100El9DeDiciembreCon: unosDescuentos

	^((self buscadorCon: (Array with: self ar100) descuentos: unosDescuentos)
		viajesDeSoloIdaDesde: #Ezeiza
		hasta: #Barcelona
		el: December ninth, 2025
		para: 5) first! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 7:26:51 pm (UTC)'!
viajesDeSoloIdaDeEzeizaABarcelonaEl9DeDiciembreCon: unasDefiniciones

	^(self buscadorCon: unasDefiniciones)
		viajesDeSoloIdaDesde: #Ezeiza
		hasta: #Barcelona
		el: December ninth, 2025
		para: 5! !

!BuscadorTest methodsFor: 'definiciones' stamp: 'HAW 11/Sep/2026, 7:27:24 pm (UTC)'!
ar100

	^DefinicionDeVuelo
		codigo: #AR100
		desde: #Ezeiza
		hasta: #Barcelona
		saleLos: (Monday to: Sunday)
		a: (TimeOfDay hours: 22)
		dura: 12 * hour
		cuesta: 1000 * dollar! !

!BuscadorTest methodsFor: 'definiciones' stamp: 'HAW 11/Sep/2026, 7:32:32 pm (UTC)'!
ar101

	^DefinicionDeVuelo
		codigo: #AR101
		desde: #Barcelona
		hasta: #Ezeiza
		saleLos: (Monday to: Sunday)
		a: (TimeOfDay hours: 14)
		dura: 12 * hour
		cuesta: 900 * dollar! !

!BuscadorTest methodsFor: 'definiciones' stamp: 'HAW 11/Sep/2026, 7:28:42 pm (UTC)'!
ib300

	^DefinicionDeVuelo
		codigo: #IB300
		desde: #Ezeiza
		hasta: #Barcelona
		saleLos: (Monday to: Friday)
		a: (TimeOfDay hours: 1)
		dura: 12 * hour
		cuesta: 1000 * dollar! !

!BuscadorTest methodsFor: 'definiciones' stamp: 'HAW 11/Sep/2026, 7:33:12 pm (UTC)'!
ib301

	^DefinicionDeVuelo
		codigo: #IB301
		desde: #Barcelona
		hasta: #Ezeiza
		saleLos: (Monday to: Friday)
		a: (TimeOfDay hours: 14)
		dura: 12 * hour
		cuesta: 900 * dollar! !

!BuscadorTest methodsFor: 'definiciones' stamp: 'HAW 11/Sep/2026, 7:33:12 pm (UTC)'!
ib503

	^DefinicionDeVuelo
		codigo: #IB503
		desde: #Madrid
		hasta: #Paris
		saleLos: (Monday to: Friday)
		a: (TimeOfDay hours: 6)
		dura: 90 * minute
		cuesta: 300 * dollar! !

!BuscadorTest methodsFor: 'definiciones' stamp: 'HAW 11/Sep/2026, 7:33:12 pm (UTC)'!
todasLasDefiniciones

	^Array
		with: self ar100
		with: self ib300
		with: self ib503
		with: self ar101
		with: self ib301! !

!BuscadorTest methodsFor: 'setUp' stamp: 'HAW 11/Sep/2026, 7:29:26 pm (UTC)'!
setUp

	asientosDisponibles := Dictionary new! !

!BuscadorTest methodsFor: 'contador de pasajeros' stamp: 'HAW 11/Sep/2026, 7:29:26 pm (UTC)'!
asientosDisponiblesPara: unCodigo el: unaFecha

	^asientosDisponibles at: (Array with: unCodigo with: unaFecha) ifAbsent: [100]! !

!SequenceableCollection methodsFor: '*2025-2C-Recuperatorio' stamp: 'HAW 9/Dec/2025, 12:29:56 am (UTC)'!
recolectar: tramos en: todosLosTramos conTramosRestantesDe: vuelosPorTramosRestantes 
	
	| vuelosPorTramo |
	
	vuelosPorTramosRestantes ifEmpty: [ ^todosLosTramos add: tramos. ].
	
	vuelosPorTramo := vuelosPorTramosRestantes first.
	vuelosPorTramo do: [ :vueloDeUnTramo | | nuevosTramos | 
			nuevosTramos := tramos copy.
			nuevosTramos add: vueloDeUnTramo.
			self recolectar: nuevosTramos en: todosLosTramos conTramosRestantesDe: vuelosPorTramosRestantes allButFirst ].
		
	! !

!SequenceableCollection methodsFor: '*2025-2C-Recuperatorio' stamp: 'HAW 9/Dec/2025, 12:28:39 am (UTC)'!
todasLasCombinaciones

	| combinaciones |
	
	combinaciones := OrderedCollection new.
	self recolectar: OrderedCollection new en: combinaciones conTramosRestantesDe: self.
	
	^combinaciones! !
