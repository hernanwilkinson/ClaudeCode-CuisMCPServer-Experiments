'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 5:28:41 pm'!
'Description '!
!provides: '2025-2C-Recuperatorio' 1 0!
SystemOrganization addCategory: #'2025-2C-Recuperatorio'!
SystemOrganization addCategory: #'2025-2C-Recuperatorio-Tests'!


!classDefinition: #Buscador category: #'2025-2C-Recuperatorio'!
Object subclass: #Buscador
	instanceVariableNames: 'definicionesDeVuelos descuentos contadorDePasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Buscador class' category: #'2025-2C-Recuperatorio'!
Buscador class
	instanceVariableNames: ''!

!classDefinition: #ContadorDePasajeros category: #'2025-2C-Recuperatorio'!
Object subclass: #ContadorDePasajeros
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'ContadorDePasajeros class' category: #'2025-2C-Recuperatorio'!
ContadorDePasajeros class
	instanceVariableNames: ''!

!classDefinition: #ContadorDePasajerosSimulado category: #'2025-2C-Recuperatorio-Tests'!
ContadorDePasajeros subclass: #ContadorDePasajerosSimulado
	instanceVariableNames: 'asientosDisponiblesPorVueloYFecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'ContadorDePasajerosSimulado class' category: #'2025-2C-Recuperatorio-Tests'!
ContadorDePasajerosSimulado class
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

!classDefinition: #Tramo category: #'2025-2C-Recuperatorio'!
Object subclass: #Tramo
	instanceVariableNames: 'definicion fecha cantidadDePasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Tramo class' category: #'2025-2C-Recuperatorio'!
Tramo class
	instanceVariableNames: ''!

!classDefinition: #TramoBuscado category: #'2025-2C-Recuperatorio'!
Object subclass: #TramoBuscado
	instanceVariableNames: 'origen destino fecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'TramoBuscado class' category: #'2025-2C-Recuperatorio'!
TramoBuscado class
	instanceVariableNames: ''!

!classDefinition: #Viaje category: #'2025-2C-Recuperatorio'!
Object subclass: #Viaje
	instanceVariableNames: 'tramos descuentos'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Viaje class' category: #'2025-2C-Recuperatorio'!
Viaje class
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

!classDefinition: #AterrizarTestCase category: #'2025-2C-Recuperatorio-Tests'!
TestCase subclass: #AterrizarTestCase
	instanceVariableNames: 'ar100 ar101 ib300 ib503 ib301'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'AterrizarTestCase class' category: #'2025-2C-Recuperatorio-Tests'!
AterrizarTestCase class
	instanceVariableNames: ''!

!classDefinition: #BuscadorTest category: #'2025-2C-Recuperatorio-Tests'!
AterrizarTestCase subclass: #BuscadorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'BuscadorTest class' category: #'2025-2C-Recuperatorio-Tests'!
BuscadorTest class
	instanceVariableNames: ''!

!classDefinition: #ViajeTest category: #'2025-2C-Recuperatorio-Tests'!
AterrizarTestCase subclass: #ViajeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'ViajeTest class' category: #'2025-2C-Recuperatorio-Tests'!
ViajeTest class
	instanceVariableNames: ''!


!Buscador methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializeParaVuelos: unasDefinicionesDeVuelos conDescuentos: unosDescuentos consultandoA: unContadorDePasajeros

	definicionesDeVuelos := unasDefinicionesDeVuelos.
	descuentos := unosDescuentos.
	contadorDePasajeros := unContadorDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
vuelosDeIdaDesde: unOrigen hasta: unDestino el: unaFecha para: unaCantidadDePasajeros

	^self 
		vuelosMultitramosPor: (Array with: (TramoBuscado desde: unOrigen hasta: unDestino el: unaFecha))
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
vuelosDeIdaYVueltaDesde: unOrigen hasta: unDestino saliendoEl: unaFechaDeIda volviendoEl: unaFechaDeVuelta para: unaCantidadDePasajeros

	^self 
		vuelosMultitramosPor: (Array 
			with: (TramoBuscado desde: unOrigen hasta: unDestino el: unaFechaDeIda)
			with: (TramoBuscado desde: unDestino hasta: unOrigen el: unaFechaDeVuelta))
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
vuelosMultitramosPor: unosTramosBuscados para: unaCantidadDePasajeros

	^(self combinacionesEncadenadasDe: (self tramosDisponiblesPara: unosTramosBuscados con: unaCantidadDePasajeros))
		collect: [:tramos | Viaje de: tramos con: descuentos]! !

!Buscador methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
combinacionesEncadenadasDe: unosTramosPorTramoBuscado

	^unosTramosPorTramoBuscado todasLasCombinaciones select: [:tramos | Viaje estanEncadenados: tramos]! !

!Buscador methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
tramosDisponiblesPara: unosTramosBuscados con: unaCantidadDePasajeros

	^unosTramosBuscados collect: [:tramoBuscado | 
		(tramoBuscado tramosDe: definicionesDeVuelos para: unaCantidadDePasajeros) 
			select: [:tramo | tramo tieneLugarSegun: contadorDePasajeros]]! !

!Buscador class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
paraVuelos: unasDefinicionesDeVuelos conDescuentos: unosDescuentos consultandoA: unContadorDePasajeros

	^self new 
		initializeParaVuelos: unasDefinicionesDeVuelos 
		conDescuentos: unosDescuentos 
		consultandoA: unContadorDePasajeros! !

!ContadorDePasajeros methodsFor: 'seats' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
asientosDisponiblesEnElVuelo: unCodigo el: unaFecha

	self subclassResponsibility! !

!ContadorDePasajerosSimulado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
initializeRespondiendo: unBloqueDeAsientosDisponibles

	asientosDisponiblesPorVueloYFecha := unBloqueDeAsientosDisponibles! !

!ContadorDePasajerosSimulado methodsFor: 'seats' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
asientosDisponiblesEnElVuelo: unCodigo el: unaFecha

	^asientosDisponiblesPorVueloYFecha value: unCodigo value: unaFecha! !

!ContadorDePasajerosSimulado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
respondiendo: unBloqueDeAsientosDisponibles

	^self new initializeRespondiendo: unBloqueDeAsientosDisponibles! !

!DefinicionDeVuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializeCodigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDeSalida durante: unaDuracion costando: unCosto

	codigo := unCodigo.
	origen := unOrigen.
	destino := unDestino.
	diasDeLaSemana := unosDiasDeLaSemana.
	horaDeSalida := unaHoraDeSalida.
	duracion := unaDuracion.
	costo := unCosto! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
asientosDisponiblesEl: unaFecha segun: unContadorDePasajeros

	^unContadorDePasajeros asientosDisponiblesEnElVuelo: codigo el: unaFecha! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
costoPara: unaCantidadDePasajeros

	^costo * unaCantidadDePasajeros! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
destino

	^destino! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
llegadaSaliendoEl: unaFecha

	^(self salidaEl: unaFecha) next: duracion! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
origen

	^origen! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
salidaEl: unaFecha

	^GregorianDateTime date: unaFecha timeOfDay: horaDeSalida! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
operaEl: unaFecha

	^diasDeLaSemana includes: unaFecha day! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
vaDesde: unOrigen hasta: unDestino

	^origen = unOrigen and: [destino = unDestino]! !

!DefinicionDeVuelo methodsFor: 'printing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: codigo! !

!DefinicionDeVuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
codigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDeSalida durante: unaDuracion costando: unCosto

	^self new 
		initializeCodigo: unCodigo 
		desde: unOrigen 
		hasta: unDestino 
		losDias: unosDiasDeLaSemana 
		aLas: unaHoraDeSalida 
		durante: unaDuracion 
		costando: unCosto! !

!Descuento methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
aplicaA: unTramo

	self subclassResponsibility! !

!Descuento methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
montoPara: unTramo

	^unTramo costoBruto * (self porcentajePara: unTramo) / 100! !

!Descuento methodsFor: 'accessing - private' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
porcentajePara: unTramo

	^(self aplicaA: unTramo) ifTrue: [porcentaje] ifFalse: [0]! !

!DescuentoPorFechaEspecial methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializePara: unaFecha de: unPorcentaje

	fecha := unaFecha.
	porcentaje := unPorcentaje! !

!DescuentoPorFechaEspecial methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
aplicaA: unTramo

	^unTramo saleEl: fecha! !

!DescuentoPorFechaEspecial class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
para: unaFecha de: unPorcentaje

	^self new initializePara: unaFecha de: unPorcentaje! !

!DescuentoPorTramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino de: unPorcentaje

	origen := unOrigen.
	destino := unDestino.
	porcentaje := unPorcentaje! !

!DescuentoPorTramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
aplicaA: unTramo

	^unTramo vaDesde: origen hasta: destino! !

!DescuentoPorTramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
desde: unOrigen hasta: unDestino de: unPorcentaje

	^self new initializeDesde: unOrigen hasta: unDestino de: unPorcentaje! !

!Tramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializeDe: unaDefinicionDeVuelo el: unaFecha para: unaCantidadDePasajeros

	definicion := unaDefinicionDeVuelo.
	fecha := unaFecha.
	cantidadDePasajeros := unaCantidadDePasajeros! !

!Tramo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
costoBruto

	^definicion costoPara: cantidadDePasajeros! !

!Tramo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
definicion

	^definicion! !

!Tramo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
destino

	^definicion destino! !

!Tramo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
llegada

	^definicion llegadaSaliendoEl: fecha! !

!Tramo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
origen

	^definicion origen! !

!Tramo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
salida

	^definicion salidaEl: fecha! !

!Tramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
saleDespuesDeLaLlegadaDe: unTramoAnterior

	^self salida > unTramoAnterior llegada! !

!Tramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
saleEl: unaFecha

	^fecha = unaFecha! !

!Tramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
tieneLugarSegun: unContadorDePasajeros

	^(definicion asientosDisponiblesEl: fecha segun: unContadorDePasajeros) >= cantidadDePasajeros! !

!Tramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
vaDesde: unOrigen hasta: unDestino

	^definicion vaDesde: unOrigen hasta: unDestino! !

!Tramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
de: unaDefinicionDeVuelo el: unaFecha para: unaCantidadDePasajeros

	^self new initializeDe: unaDefinicionDeVuelo el: unaFecha para: unaCantidadDePasajeros! !

!TramoBuscado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino el: unaFecha

	origen := unOrigen.
	destino := unDestino.
	fecha := unaFecha! !

!TramoBuscado methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
tramosDe: unasDefinicionesDeVuelos para: unaCantidadDePasajeros

	^(unasDefinicionesDeVuelos select: [:definicion | self esCubiertoPor: definicion])
		collect: [:definicion | Tramo de: definicion el: fecha para: unaCantidadDePasajeros]! !

!TramoBuscado methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
esCubiertoPor: unaDefinicionDeVuelo

	^(unaDefinicionDeVuelo vaDesde: origen hasta: destino) and: [unaDefinicionDeVuelo operaEl: fecha]! !

!TramoBuscado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
desde: unOrigen hasta: unDestino el: unaFecha

	^self new initializeDesde: unOrigen hasta: unDestino el: unaFecha! !

!Viaje methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
initializeDe: unosTramos con: unosDescuentos

	tramos := unosTramos.
	descuentos := unosDescuentos! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
definicionesDeVuelos

	^tramos collect: [:tramo | tramo definicion]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
destino

	^tramos last destino! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
llegada

	^tramos last llegada! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
origen

	^tramos first origen! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
salida

	^tramos first salida! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
costoBruto

	^tramos sum: [:tramo | tramo costoBruto]! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
costoNeto

	^descuentos 
		inject: self costoBruto 
		into: [:costoRestante :descuento | costoRestante - (self montoDescontadoPor: descuento)]! !

!Viaje methodsFor: 'discounts' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
descuentosAplicados

	^descuentos select: [:descuento | self aplica: descuento]! !

!Viaje methodsFor: 'discounts' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
montoDescontadoPor: unDescuento

	^tramos sum: [:tramo | unDescuento montoPara: tramo]! !

!Viaje methodsFor: 'discounts - private' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
aplica: unDescuento

	^tramos anySatisfy: [:tramo | unDescuento aplicaA: tramo]! !

!Viaje class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
de: unosTramos con: unosDescuentos

	self assertEstanEncadenados: unosTramos.

	^self new initializeDe: unosTramos con: unosDescuentos! !

!Viaje class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
assertEstanEncadenados: unosTramos

	(self estanEncadenados: unosTramos) ifFalse: [self error: self tramosNoEncadenadosErrorDescription]! !

!Viaje class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
estanEncadenados: unosTramos

	^unosTramos allButFirst 
		with: unosTramos allButLast 
		allSatisfy: [:tramo :tramoAnterior | tramo saleDespuesDeLaLlegadaDe: tramoAnterior]! !

!Viaje class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 8:00:41 pm (UTC)'!
tramosNoEncadenadosErrorDescription

	^'Cada tramo debe salir después de la llegada del tramo anterior'! !

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

!AterrizarTestCase methodsFor: 'setUp' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
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
		durante: 90 * minute 
		costando: 300 * dollar.
	ib301 := DefinicionDeVuelo 
		codigo: 'IB301' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar! !

!AterrizarTestCase class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
isAbstract

	^thisContext methodClass == self class! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test01VueloDeIdaDeEzeizaABarcelonaEl9DeDiciembreOfreceAR100EIB300

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5.
	
	self assert: (self vuelosOfrecidosEn: viajes) equals: { { ar100 }. { ib300 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test02VueloDeIdaNoOfreceDefinicionesQueNoOperanElDiaDeSalida

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December thirteenth, 2025 
		para: 5.
	
	self assert: (self vuelosOfrecidosEn: viajes) equals: { { ar100 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test03VueloDeIdaNoOfreceVuelosSinLugarParaTodosLosPasajeros

	| viajes |
	
	viajes := (self buscadorConsultandoA: (self contadorCon: 4 asientosEn: 'IB300' el: December ninth, 2025)) 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5.
	
	self assert: (self vuelosOfrecidosEn: viajes) equals: { { ar100 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test04VueloDeIdaOfreceVuelosConLugarJustoParaTodosLosPasajeros

	| viajes |
	
	viajes := (self buscadorConsultandoA: (self contadorCon: 5 asientosEn: 'IB300' el: December ninth, 2025)) 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5.
	
	self assert: (self vuelosOfrecidosEn: viajes) equals: { { ar100 }. { ib300 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test05VueloDeIdaYVueltaCombinaLosVuelosDeIdaConLosDeVuelta

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		volviendoEl: December fifteenth, 2025 
		para: 5.
	
	self 
		assert: (self vuelosOfrecidosEn: viajes) 
		equals: { { ar100. ar101 }. { ar100. ib301 }. { ib300. ar101 }. { ib300. ib301 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test06VueloDeIdaYVueltaNoOfreceVueltasQueSalenAntesDeLlegarLaIda

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		volviendoEl: December ninth, 2025 
		para: 5.
	
	self assert: (self vuelosOfrecidosEn: viajes) equals: { { ib300. ar101 }. { ib300. ib301 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test07VueloMultitramosCombinaLosVuelosDeCadaTramo

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosMultitramosPor: { 
			TramoBuscado desde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025.
			TramoBuscado desde: 'Madrid' hasta: 'Paris' el: December fifteenth, 2025.
			TramoBuscado desde: 'Barcelona' hasta: 'Ezeiza' el: December nineteenth, 2025 } 
		para: 1.
	
	self 
		assert: (self vuelosOfrecidosEn: viajes) 
		equals: { { ar100. ib503. ar101 }. { ar100. ib503. ib301 }. { ib300. ib503. ar101 }. { ib300. ib503. ib301 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test08VueloMultitramosNoOfreceTramosQueSalenAntesDeLlegarElAnterior

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosMultitramosPor: { 
			TramoBuscado desde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025.
			TramoBuscado desde: 'Madrid' hasta: 'Paris' el: December tenth, 2025 } 
		para: 1.
	
	self assert: (self vuelosOfrecidosEn: viajes) equals: { { ib300. ib503 } }! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test09VueloMultitramosNoOfreceViajesCuandoUnTramoNoTieneVuelos

	| viajes |
	
	viajes := self buscadorConLugarEnTodosLosVuelos 
		vuelosMultitramosPor: { 
			TramoBuscado desde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025.
			TramoBuscado desde: 'Madrid' hasta: 'Paris' el: December thirteenth, 2025 } 
		para: 1.
	
	self assert: viajes isEmpty! !

!BuscadorTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test10LosViajesOfrecidosTienenAplicadosLosDescuentosDelBuscador

	| buscador viajes |
	
	buscador := Buscador 
		paraVuelos: self definicionesDeVuelos 
		conDescuentos: { DescuentoPorTramo desde: 'Ezeiza' hasta: 'Barcelona' de: 10 } 
		consultandoA: self contadorConLugarEnTodosLosVuelos.
	
	viajes := buscador vuelosDeIdaDesde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025 para: 5.
	
	self assert: (viajes collect: [:viaje | viaje costoNeto]) asArray equals: { 4500 * dollar. 4500 * dollar }! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
asientosDeUnVueloConLugar

	^100! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
buscadorConLugarEnTodosLosVuelos

	^self buscadorConsultandoA: self contadorConLugarEnTodosLosVuelos! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
buscadorConsultandoA: unContadorDePasajeros

	^Buscador 
		paraVuelos: self definicionesDeVuelos 
		conDescuentos: #() 
		consultandoA: unContadorDePasajeros! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
contadorCon: unaCantidadDeAsientos asientosEn: unCodigo el: unaFecha

	^ContadorDePasajerosSimulado respondiendo: [:codigo :fecha | 
		(codigo = unCodigo and: [fecha = unaFecha]) 
			ifTrue: [unaCantidadDeAsientos] 
			ifFalse: [self asientosDeUnVueloConLugar]]! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
contadorConLugarEnTodosLosVuelos

	^ContadorDePasajerosSimulado respondiendo: [:codigo :fecha | self asientosDeUnVueloConLugar]! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
definicionesDeVuelos

	^{ ar100. ar101. ib300. ib503. ib301 }! !

!BuscadorTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
vuelosOfrecidosEn: unosViajes

	^(unosViajes collect: [:viaje | viaje definicionesDeVuelos asArray]) asArray! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test01ElOrigenDeUnViajeEsElDeSuPrimerTramo

	self assert: (self viajeDeEzeizaAParisCon: #()) origen equals: 'Ezeiza'! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test02ElDestinoDeUnViajeEsElDeSuUltimoTramo

	self assert: (self viajeDeEzeizaAParisCon: #()) destino equals: 'Paris'! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test03LaSalidaDeUnViajeEsLaDeSuPrimerTramo

	self 
		assert: (self viajeDeEzeizaAParisCon: #()) salida 
		equals: (GregorianDateTime date: December ninth, 2025 timeOfDay: (TimeOfDay hours: 22))! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test04LaLlegadaDeUnViajeEsLaDeSuUltimoTramoSegunLaDuracionDelVuelo

	self 
		assert: (self viajeDeEzeizaAParisCon: #()) llegada 
		equals: (GregorianDateTime date: December fifteenth, 2025 timeOfDay: (TimeOfDay hours: 7 minutes: 30))! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test05ElCostoBrutoEsLaSumaDelCostoDeCadaTramoPorLaCantidadDePasajeros

	self assert: (self viajeDeEzeizaAParisCon: #()) costoBruto equals: 2600 * dollar! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test06SinDescuentosElCostoNetoEsElCostoBruto

	self assert: (self viajeDeEzeizaAParisCon: #()) costoNeto equals: 2600 * dollar! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test07UnDescuentoPorTramoDescuentaSuPorcentajeDelCostoDelTramoConEseOrigenYDestino

	| madridParis |
	
	madridParis := DescuentoPorTramo desde: 'Madrid' hasta: 'Paris' de: 10.
	
	self assert: ((self viajeDeEzeizaAParisCon: { madridParis }) montoDescontadoPor: madridParis) equals: 60 * dollar! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test08UnDescuentoPorFechaEspecialDescuentaSuPorcentajeDelCostoDelTramoQueSaleEseDia

	| nueveDeDiciembre |
	
	nueveDeDiciembre := DescuentoPorFechaEspecial para: December ninth, 2025 de: 20.
	
	self 
		assert: ((self viajeDeEzeizaAParisCon: { nueveDeDiciembre }) montoDescontadoPor: nueveDeDiciembre) 
		equals: 400 * dollar! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test09UnDescuentoQueNoAplicaANingunTramoNoDescuentaNada

	| navidad |
	
	navidad := DescuentoPorFechaEspecial para: December twentyfifth, 2025 de: 20.
	
	self assert: ((self viajeDeEzeizaAParisCon: { navidad }) montoDescontadoPor: navidad) equals: 0 * dollar! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test10LosDescuentosSimultaneosSobreUnTramoSeCalculanSobreElCostoBruto

	| viaje |
	
	viaje := self viajeDeEzeizaAParisCon: { 
		DescuentoPorTramo desde: 'Ezeiza' hasta: 'Barcelona' de: 10.
		DescuentoPorFechaEspecial para: December ninth, 2025 de: 20 }.
	
	self assert: viaje costoNeto equals: 2000 * dollar! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test11LosDescuentosAplicadosSonLosQueAplicanAAlgunTramo

	| madridParis navidad |
	
	madridParis := DescuentoPorTramo desde: 'Madrid' hasta: 'Paris' de: 10.
	navidad := DescuentoPorFechaEspecial para: December twentyfifth, 2025 de: 20.
	
	self assert: (self viajeDeEzeizaAParisCon: { madridParis. navidad }) descuentosAplicados equals: { madridParis }! !

!ViajeTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
test12NoSePuedeArmarUnViajeConUnTramoQueSaleAntesDeLlegarElAnterior

	| tramos |
	
	tramos := { 
		Tramo de: ar100 el: December ninth, 2025 para: 2.
		Tramo de: ib503 el: December tenth, 2025 para: 2 }.
	
	self 
		should: [Viaje de: tramos con: #()] 
		raise: Error 
		withMessageText: Viaje tramosNoEncadenadosErrorDescription! !

!ViajeTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 8:01:41 pm (UTC)'!
viajeDeEzeizaAParisCon: unosDescuentos

	^Viaje 
		de: { 
			Tramo de: ar100 el: December ninth, 2025 para: 2.
			Tramo de: ib503 el: December fifteenth, 2025 para: 2 } 
		con: unosDescuentos! !

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
