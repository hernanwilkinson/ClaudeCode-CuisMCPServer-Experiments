'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 4:37:47 pm'!
'Description '!
!provides: '2025-2C-Recuperatorio' 1 0!
SystemOrganization addCategory: #'2025-2C-Recuperatorio'!
SystemOrganization addCategory: #'2025-2C-Recuperatorio-Tests'!


!classDefinition: #BuscadorDeVuelos category: #'2025-2C-Recuperatorio'!
Object subclass: #BuscadorDeVuelos
	instanceVariableNames: 'definiciones descuentos contadorDePasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'BuscadorDeVuelos class' category: #'2025-2C-Recuperatorio'!
BuscadorDeVuelos class
	instanceVariableNames: ''!

!classDefinition: #DefinicionDeVuelo category: #'2025-2C-Recuperatorio'!
Object subclass: #DefinicionDeVuelo
	instanceVariableNames: 'codigo origen destino diasDeLaSemana horaDePartida duracion costo'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DefinicionDeVuelo class' category: #'2025-2C-Recuperatorio'!
DefinicionDeVuelo class
	instanceVariableNames: ''!

!classDefinition: #Descuento category: #'2025-2C-Recuperatorio'!
Object subclass: #Descuento
	instanceVariableNames: 'porcentaje'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Descuento class' category: #'2025-2C-Recuperatorio'!
Descuento class
	instanceVariableNames: ''!

!classDefinition: #DescuentoPorFechaEspecial category: #'2025-2C-Recuperatorio'!
Descuento subclass: #DescuentoPorFechaEspecial
	instanceVariableNames: 'fecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoPorFechaEspecial class' category: #'2025-2C-Recuperatorio'!
DescuentoPorFechaEspecial class
	instanceVariableNames: ''!

!classDefinition: #DescuentoPorTramo category: #'2025-2C-Recuperatorio'!
Descuento subclass: #DescuentoPorTramo
	instanceVariableNames: 'origen destino'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoPorTramo class' category: #'2025-2C-Recuperatorio'!
DescuentoPorTramo class
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
	instanceVariableNames: 'definicion fecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Vuelo class' category: #'2025-2C-Recuperatorio'!
Vuelo class
	instanceVariableNames: ''!

!classDefinition: #ContadorDePasajerosSimulado category: #'2025-2C-Recuperatorio-Tests'!
Object subclass: #ContadorDePasajerosSimulado
	instanceVariableNames: 'asientosDisponiblesPorDefecto asientosDisponibles'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'ContadorDePasajerosSimulado class' category: #'2025-2C-Recuperatorio-Tests'!
ContadorDePasajerosSimulado class
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

!classDefinition: #BuscadorDeVuelosTest category: #'2025-2C-Recuperatorio-Tests'!
TestCase subclass: #BuscadorDeVuelosTest
	instanceVariableNames: 'ar100 ar101 ib300 ib503 ib301 contadorDePasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'BuscadorDeVuelosTest class' category: #'2025-2C-Recuperatorio-Tests'!
BuscadorDeVuelosTest class
	instanceVariableNames: ''!


!BuscadorDeVuelos methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:31:35 pm (UTC)'!
initializeConDefiniciones: unasDefinicionesDeVuelo descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	definiciones := unasDefinicionesDeVuelo.
	descuentos := unosDescuentos.
	contadorDePasajeros := unContadorDePasajeros! !

!BuscadorDeVuelos methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:29:12 pm (UTC)'!
viajesDeIdaDesde: unOrigen hasta: unDestino el: unaFecha para: unaCantidadDePasajeros

	^self 
		viajesPorTramos: (Array with: (Tramo desde: unOrigen hasta: unDestino el: unaFecha)) 
		para: unaCantidadDePasajeros! !

!BuscadorDeVuelos methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:29:12 pm (UTC)'!
viajesDeIdaYVueltaDesde: unOrigen hasta: unDestino saliendoEl: unaFechaDeIda volviendoEl: unaFechaDeVuelta para: unaCantidadDePasajeros

	^self 
		viajesPorTramos: (Array 
			with: (Tramo desde: unOrigen hasta: unDestino el: unaFechaDeIda) 
			with: (Tramo desde: unDestino hasta: unOrigen el: unaFechaDeVuelta)) 
		para: unaCantidadDePasajeros! !

!BuscadorDeVuelos methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:30:25 pm (UTC)'!
viajesPorTramos: unosTramos para: unaCantidadDePasajeros

	^self viajesCombinando: (unosTramos collect: [:tramo | 
		self vuelosConAsientosEn: tramo para: unaCantidadDePasajeros])! !

!BuscadorDeVuelos methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 7:37:25 pm (UTC)'!
combinacionesPosiblesDe: unosVuelosPorTramo

	^unosVuelosPorTramo todasLasCombinaciones 
		select: [:vuelos | Viaje puedeHacerseCon: vuelos]! !

!BuscadorDeVuelos methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 7:37:25 pm (UTC)'!
viajesCombinando: unosVuelosPorTramo

	^(self combinacionesPosiblesDe: unosVuelosPorTramo) 
		collect: [:vuelos | Viaje con: vuelos descuentos: descuentos]! !

!BuscadorDeVuelos methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 7:29:02 pm (UTC)'!
vuelosConAsientosEn: unTramo para: unaCantidadDePasajeros

	^(unTramo vuelosDe: definiciones) 
		select: [:vuelo | vuelo tieneAsientosPara: unaCantidadDePasajeros segun: contadorDePasajeros]! !

!BuscadorDeVuelos class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:31:35 pm (UTC)'!
conDefiniciones: unasDefinicionesDeVuelo descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	^self new 
		initializeConDefiniciones: unasDefinicionesDeVuelo 
		descuentos: unosDescuentos 
		contadorDePasajeros: unContadorDePasajeros! !

!DefinicionDeVuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
initializeCodigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDePartida durante: unaDuracion costando: unCosto

	codigo := unCodigo.
	origen := unOrigen.
	destino := unDestino.
	diasDeLaSemana := unosDiasDeLaSemana.
	horaDePartida := unaHoraDePartida.
	duracion := unaDuracion.
	costo := unCosto! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
codigo

	^codigo! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:48 pm (UTC)'!
costo

	^costo! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:26:44 pm (UTC)'!
destino

	^destino! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:26:44 pm (UTC)'!
origen

	^origen! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:32:47 pm (UTC)'!
saleDesde: unOrigen hasta: unDestino

	^origen = unOrigen and: [destino = unDestino]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:32:47 pm (UTC)'!
saleDesde: unOrigen hasta: unDestino el: unaFecha

	^(self saleDesde: unOrigen hasta: unDestino) and: [diasDeLaSemana includes: unaFecha day]! !

!DefinicionDeVuelo methodsFor: 'vuelos' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
vueloEl: unaFecha

	^Vuelo de: self el: unaFecha! !

!DefinicionDeVuelo methodsFor: 'schedule' stamp: 'HAW 11/Sep/2026, 7:27:14 pm (UTC)'!
llegadaEl: unaFecha

	^(self partidaEl: unaFecha) next: duracion! !

!DefinicionDeVuelo methodsFor: 'schedule' stamp: 'HAW 11/Sep/2026, 7:27:14 pm (UTC)'!
partidaEl: unaFecha

	^unaFecha atTimeOfDay: horaDePartida! !

!DefinicionDeVuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
codigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDePartida durante: unaDuracion costando: unCosto

	^self new 
		initializeCodigo: unCodigo 
		desde: unOrigen 
		hasta: unDestino 
		losDias: unosDiasDeLaSemana 
		aLas: unaHoraDePartida 
		durante: unaDuracion 
		costando: unCosto! !

!Descuento methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
aplicadoA: unVuelo

	^DescuentoAplicado de: self por: (self montoADescontarDe: unVuelo)! !

!Descuento methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:33:19 pm (UTC)'!
montoADescontarDe: unVuelo

	^unVuelo costo * porcentaje / 100! !

!Descuento methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:33:19 pm (UTC)'!
aplicaA: unVuelo

	self subclassResponsibility! !

!DescuentoPorFechaEspecial methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:31:35 pm (UTC)'!
initializeDel: unPorcentaje porcientoEl: unaFecha

	porcentaje := unPorcentaje.
	fecha := unaFecha! !

!DescuentoPorFechaEspecial methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:32:13 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo saleEl: fecha! !

!DescuentoPorFechaEspecial class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:31:35 pm (UTC)'!
del: unPorcentaje porcientoEl: unaFecha

	^self new initializeDel: unPorcentaje porcientoEl: unaFecha! !

!DescuentoPorTramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:32:54 pm (UTC)'!
initializeDel: unPorcentaje porcientoDesde: unOrigen hasta: unDestino

	porcentaje := unPorcentaje.
	origen := unOrigen.
	destino := unDestino! !

!DescuentoPorTramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:32:54 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo saleDesde: origen hasta: destino! !

!DescuentoPorTramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:37:25 pm (UTC)'!
del: unPorcentaje porcientoDesde: unOrigen hasta: unDestino

	^self new 
		initializeDel: unPorcentaje 
		porcientoDesde: unOrigen 
		hasta: unDestino! !

!DescuentoAplicado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
initializeDe: unDescuento por: unMonto

	descuento := unDescuento.
	monto := unMonto! !

!DescuentoAplicado methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
= unObjeto

	^self class = unObjeto class and: [descuento = unObjeto descuento and: [monto = unObjeto monto]]! !

!DescuentoAplicado methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
hash

	^descuento hash bitXor: monto hash! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
descuento

	^descuento! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
monto

	^monto! !

!DescuentoAplicado methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:36:54 pm (UTC)'!
descontadoDe: unCosto

	^unCosto - monto! !

!DescuentoAplicado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:36:38 pm (UTC)'!
de: unDescuento por: unMonto

	^self new initializeDe: unDescuento por: unMonto! !

!Tramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:29:12 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino el: unaFecha

	origen := unOrigen.
	destino := unDestino.
	fecha := unaFecha! !

!Tramo methodsFor: 'vuelos' stamp: 'HAW 11/Sep/2026, 7:37:25 pm (UTC)'!
vuelosDe: unasDefinicionesDeVuelo

	^(unasDefinicionesDeVuelo 
		select: [:definicion | definicion saleDesde: origen hasta: destino el: fecha])
			collect: [:definicion | definicion vueloEl: fecha]! !

!Tramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:29:12 pm (UTC)'!
desde: unOrigen hasta: unDestino el: unaFecha

	^self new initializeDesde: unOrigen hasta: unDestino el: unaFecha! !

!Viaje methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:31:35 pm (UTC)'!
initializeCon: unosVuelos descuentos: unosDescuentos

	vuelos := unosVuelos.
	descuentos := unosDescuentos! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
codigosDeVuelo

	^vuelos collect: [:vuelo | vuelo codigo]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:26:44 pm (UTC)'!
destino

	^vuelos last destino! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:14 pm (UTC)'!
llegada

	^vuelos last llegada! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:26:44 pm (UTC)'!
origen

	^vuelos first origen! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:14 pm (UTC)'!
partida

	^vuelos first partida! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:27:48 pm (UTC)'!
costoBruto

	^vuelos sum: [:vuelo | vuelo costo]! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:36:54 pm (UTC)'!
costoNeto

	^self descuentosAplicados 
		inject: self costoBruto 
		into: [:costoNeto :descuentoAplicado | descuentoAplicado descontadoDe: costoNeto]! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:36:30 pm (UTC)'!
descuentosAplicados

	^vuelos 
		inject: #() 
		into: [:descuentosAplicados :vuelo | descuentosAplicados, (vuelo descuentosAplicadosSegun: descuentos)]! !

!Viaje class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:31:35 pm (UTC)'!
con: unosVuelos descuentos: unosDescuentos

	^self new initializeCon: unosVuelos descuentos: unosDescuentos! !

!Viaje class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:29:48 pm (UTC)'!
puedeHacerseCon: unosVuelos

	^(unosVuelos allButFirst 
		with: unosVuelos allButLast 
		collect: [:vuelo :vueloAnterior | vuelo saleDespuesDeLaLlegadaDe: vueloAnterior]) 
			allSatisfy: [:saleDespuesDelAnterior | saleDespuesDelAnterior]! !

!Vuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
initializeDe: unaDefinicionDeVuelo el: unaFecha

	definicion := unaDefinicionDeVuelo.
	fecha := unaFecha! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
codigo

	^definicion codigo! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:48 pm (UTC)'!
costo

	^definicion costo! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:26:44 pm (UTC)'!
destino

	^definicion destino! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:14 pm (UTC)'!
llegada

	^definicion llegadaEl: fecha! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:26:44 pm (UTC)'!
origen

	^definicion origen! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:27:14 pm (UTC)'!
partida

	^definicion partidaEl: fecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:32:47 pm (UTC)'!
saleDesde: unOrigen hasta: unDestino

	^definicion saleDesde: unOrigen hasta: unDestino! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:29:48 pm (UTC)'!
saleDespuesDeLaLlegadaDe: unVuelo

	^self partida > unVuelo llegada! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:32:13 pm (UTC)'!
saleEl: unaFecha

	^fecha = unaFecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:37:25 pm (UTC)'!
tieneAsientosPara: unaCantidadDePasajeros segun: unContadorDePasajeros

	^(unContadorDePasajeros asientosDisponiblesEnElVuelo: self codigo el: fecha) 
		>= unaCantidadDePasajeros! !

!Vuelo methodsFor: 'discounting' stamp: 'HAW 11/Sep/2026, 7:36:30 pm (UTC)'!
descuentosAplicadosSegun: unosDescuentos

	^(unosDescuentos select: [:descuento | descuento aplicaA: self]) 
		collect: [:descuento | descuento aplicadoA: self]! !

!Vuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:57:41 pm (UTC)'!
de: unaDefinicionDeVuelo el: unaFecha

	^self new initializeDe: unaDefinicionDeVuelo el: unaFecha! !

!ContadorDePasajerosSimulado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:21:26 pm (UTC)'!
initializeConAsientosDisponiblesPorDefecto: unaCantidadDeAsientos

	asientosDisponiblesPorDefecto := unaCantidadDeAsientos.
	asientosDisponibles := Dictionary new! !

!ContadorDePasajerosSimulado methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 7:21:26 pm (UTC)'!
registrarAsientosDisponibles: unaCantidadDeAsientos enElVuelo: unCodigo el: unaFecha

	asientosDisponibles at: (Array with: unCodigo with: unaFecha) put: unaCantidadDeAsientos! !

!ContadorDePasajerosSimulado methodsFor: 'counting' stamp: 'HAW 11/Sep/2026, 7:21:26 pm (UTC)'!
asientosDisponiblesEnElVuelo: unCodigo el: unaFecha

	^asientosDisponibles 
		at: (Array with: unCodigo with: unaFecha) 
		ifAbsent: [asientosDisponiblesPorDefecto]! !

!ContadorDePasajerosSimulado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:21:26 pm (UTC)'!
conAsientosDisponiblesPorDefecto: unaCantidadDeAsientos

	^self new initializeConAsientosDisponiblesPorDefecto: unaCantidadDeAsientos! !

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

!BuscadorDeVuelosTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 7:21:26 pm (UTC)'!
setUp

	ar100 := DefinicionDeVuelo 
		codigo: 'AR100' 
		desde: 'Ezeiza' 
		hasta: 'Barcelona' 
		losDias: (Monday to: Sunday) 
		aLas: (TimeOfDay hours: 22) 
		durante: 12 * hour 
		costando: 1000 * dollar.
	ar101 := DefinicionDeVuelo 
		codigo: 'AR101' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Sunday) 
		aLas: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar.
	ib300 := DefinicionDeVuelo 
		codigo: 'IB300' 
		desde: 'Ezeiza' 
		hasta: 'Barcelona' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 1) 
		durante: 12 * hour 
		costando: 1000 * dollar.
	ib503 := DefinicionDeVuelo 
		codigo: 'IB503' 
		desde: 'Madrid' 
		hasta: 'Paris' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 6) 
		durante: 1 * hour + (30 * minute) 
		costando: 300 * dollar.
	ib301 := DefinicionDeVuelo 
		codigo: 'IB301' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar.
	contadorDePasajeros := ContadorDePasajerosSimulado conAsientosDisponiblesPorDefecto: 100! !

!BuscadorDeVuelosTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 7:30:39 pm (UTC)'!
buscadorConDescuentos: unosDescuentos

	^BuscadorDeVuelos 
		conDefiniciones: (Array with: ar100 with: ar101 with: ib300 with: ib503 with: ib301) 
		descuentos: unosDescuentos 
		contadorDePasajeros: contadorDePasajeros! !

!BuscadorDeVuelosTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 7:30:39 pm (UTC)'!
buscadorSinDescuentos

	^self buscadorConDescuentos: #()! !

!BuscadorDeVuelosTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 7:31:59 pm (UTC)'!
descuentoDeNavidad

	^DescuentoPorFechaEspecial del: 10 porcientoEl: December / 25 / 2025! !

!BuscadorDeVuelosTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 7:32:30 pm (UTC)'!
descuentoEzeizaBarcelona

	^DescuentoPorTramo del: 20 porcientoDesde: 'Ezeiza' hasta: 'Barcelona'! !

!BuscadorDeVuelosTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 7:31:36 pm (UTC)'!
viajeEnAR100ElNueveYEnIB503ElQuinceDeDiciembre

	^Viaje 
		con: (Array 
			with: (ar100 vueloEl: December / 9 / 2025) 
			with: (ib503 vueloEl: December / 15 / 2025)) 
		descuentos: #()! !

!BuscadorDeVuelosTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:57:05 pm (UTC)'!
codigosDeVueloDe: unosViajes

	^(unosViajes collect: [:viaje | viaje codigosDeVuelo asArray]) asArray! !

!BuscadorDeVuelosTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 7:30:39 pm (UTC)'!
costosNetosDe: unosViajes

	^(unosViajes collect: [:viaje | viaje costoNeto]) asArray! !

!BuscadorDeVuelosTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 6:57:05 pm (UTC)'!
test01ElViajeDeIdaOfreceLosVuelosQueSalenDelOrigenAlDestinoEseDiaDeLaSemana

	| viajes |
	
	viajes := self buscadorSinDescuentos 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 9 / 2025 
		para: 5.
	
	self assert: (self codigosDeVueloDe: viajes) equals: #(#('AR100') #('IB300'))! !

!BuscadorDeVuelosTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 6:57:52 pm (UTC)'!
test02ElViajeDeIdaNoOfreceLosVuelosQueNoSalenEseDiaDeLaSemana

	| viajes |
	
	viajes := self buscadorSinDescuentos 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 13 / 2025 
		para: 5.
	
	self assert: (self codigosDeVueloDe: viajes) equals: #(#('AR100'))! !

!BuscadorDeVuelosTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:21:26 pm (UTC)'!
test03ElViajeDeIdaNoOfreceLosVuelosSinAsientosParaTodosLosPasajeros

	| viajes |
	
	contadorDePasajeros registrarAsientosDisponibles: 4 enElVuelo: 'IB300' el: December / 9 / 2025.
	
	viajes := self buscadorSinDescuentos 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 9 / 2025 
		para: 5.
	
	self assert: (self codigosDeVueloDe: viajes) equals: #(#('AR100'))! !

!BuscadorDeVuelosTest methodsFor: 'tests - viaje' stamp: 'HAW 11/Sep/2026, 7:27:29 pm (UTC)'!
test04ElViajeSaleDelOrigenDeSuPrimerVueloYLlegaAlDestinoDeSuUltimoVuelo

	| viaje |
	
	viaje := self viajeEnAR100ElNueveYEnIB503ElQuinceDeDiciembre.
	
	self assert: viaje origen equals: 'Ezeiza'.
	self assert: viaje destino equals: 'Paris'! !

!BuscadorDeVuelosTest methodsFor: 'tests - viaje' stamp: 'HAW 11/Sep/2026, 7:27:29 pm (UTC)'!
test05ElViajeParteCuandoSaleSuPrimerVueloYLlegaCuandoTerminaSuUltimoVuelo

	| viaje |
	
	viaje := self viajeEnAR100ElNueveYEnIB503ElQuinceDeDiciembre.
	
	self 
		assert: viaje partida 
		equals: ((December / 9 / 2025) atTimeOfDay: (TimeOfDay hours: 22)).
	self 
		assert: viaje llegada 
		equals: ((December / 15 / 2025) atTimeOfDay: (TimeOfDay hours: 7 minutes: 30))! !

!BuscadorDeVuelosTest methodsFor: 'tests - viaje' stamp: 'HAW 11/Sep/2026, 7:27:38 pm (UTC)'!
test06ElCostoBrutoDelViajeEsLaSumaDelCostoDeSusVuelos

	self 
		assert: self viajeEnAR100ElNueveYEnIB503ElQuinceDeDiciembre costoBruto 
		equals: 1300 * dollar! !

!BuscadorDeVuelosTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:28:07 pm (UTC)'!
test07ElViajeDeIdaYVueltaCombinaLosVuelosDeIdaConLosDeVuelta

	| viajes |
	
	viajes := self buscadorSinDescuentos 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December / 9 / 2025 
		volviendoEl: December / 15 / 2025 
		para: 5.
	
	self 
		assert: (self codigosDeVueloDe: viajes) 
		equals: #(#('AR100' 'AR101') #('AR100' 'IB301') #('IB300' 'AR101') #('IB300' 'IB301'))! !

!BuscadorDeVuelosTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 7:28:43 pm (UTC)'!
test08ElViajeMultitramosCombinaLosVuelosDeCadaTramo

	| viajes |
	
	viajes := self buscadorSinDescuentos 
		viajesPorTramos: (Array 
			with: (Tramo desde: 'Ezeiza' hasta: 'Barcelona' el: December / 9 / 2025) 
			with: (Tramo desde: 'Madrid' hasta: 'Paris' el: December / 15 / 2025) 
			with: (Tramo desde: 'Barcelona' hasta: 'Ezeiza' el: December / 19 / 2025)) 
		para: 1.
	
	self 
		assert: (self codigosDeVueloDe: viajes) 
		equals: #(#('AR100' 'IB503' 'AR101') #('AR100' 'IB503' 'IB301') #('IB300' 'IB503' 'AR101') #('IB300' 'IB503' 'IB301'))! !

!BuscadorDeVuelosTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 7:29:28 pm (UTC)'!
test09ElViajeMultitramosNoOfreceVuelosQueSalenAntesDeLaLlegadaDelVueloAnterior

	| viajes |
	
	viajes := self buscadorSinDescuentos 
		viajesPorTramos: (Array 
			with: (Tramo desde: 'Ezeiza' hasta: 'Barcelona' el: December / 9 / 2025) 
			with: (Tramo desde: 'Madrid' hasta: 'Paris' el: December / 10 / 2025)) 
		para: 1.
	
	self assert: (self codigosDeVueloDe: viajes) equals: #(#('IB300' 'IB503'))! !

!BuscadorDeVuelosTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:31:59 pm (UTC)'!
test10ElCostoNetoDescuentaElPorcentajeDeLaFechaEspecialEnQueSaleElVuelo

	| viajes |
	
	viajes := (self buscadorConDescuentos: (Array with: self descuentoDeNavidad)) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 25 / 2025 
		para: 1.
	
	self 
		assert: (self costosNetosDe: viajes) 
		equals: (Array with: 900 * dollar with: 900 * dollar)! !

!BuscadorDeVuelosTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:31:59 pm (UTC)'!
test11ElCostoNetoNoDescuentaLaFechaEspecialCuandoElVueloSaleOtroDia

	| viajes |
	
	viajes := (self buscadorConDescuentos: (Array with: self descuentoDeNavidad)) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 24 / 2025 
		para: 1.
	
	self 
		assert: (self costosNetosDe: viajes) 
		equals: (Array with: 1000 * dollar with: 1000 * dollar)! !

!BuscadorDeVuelosTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:32:30 pm (UTC)'!
test12ElCostoNetoDescuentaElPorcentajeDelTramoSoloEnLosVuelosConEseOrigenYDestino

	| viajes |
	
	viajes := (self buscadorConDescuentos: (Array with: self descuentoEzeizaBarcelona)) 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December / 9 / 2025 
		volviendoEl: December / 15 / 2025 
		para: 1.
	
	self 
		assert: (self costosNetosDe: viajes) 
		equals: (Array new: 4 withAll: 1700 * dollar)! !

!BuscadorDeVuelosTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:36:05 pm (UTC)'!
test13ElCostoNetoAplicaVariosDescuentosSobreElCostoBruto

	| viajes |
	
	viajes := (self buscadorConDescuentos: (Array 
			with: self descuentoDeNavidad 
			with: self descuentoEzeizaBarcelona)) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 25 / 2025 
		para: 1.
	
	self 
		assert: (self costosNetosDe: viajes) 
		equals: (Array with: 700 * dollar with: 700 * dollar)! !

!BuscadorDeVuelosTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:36:05 pm (UTC)'!
test14ElViajeInformaCadaDescuentoAplicadoConSuMonto

	| navidad ezeizaBarcelona viaje |
	
	navidad := self descuentoDeNavidad.
	ezeizaBarcelona := self descuentoEzeizaBarcelona.
	viaje := Viaje 
		con: (Array with: (ar100 vueloEl: December / 25 / 2025)) 
		descuentos: (Array with: navidad with: ezeizaBarcelona).
	
	self 
		assert: viaje descuentosAplicados asArray 
		equals: (Array 
			with: (DescuentoAplicado de: navidad por: 100 * dollar) 
			with: (DescuentoAplicado de: ezeizaBarcelona por: 200 * dollar))! !

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
