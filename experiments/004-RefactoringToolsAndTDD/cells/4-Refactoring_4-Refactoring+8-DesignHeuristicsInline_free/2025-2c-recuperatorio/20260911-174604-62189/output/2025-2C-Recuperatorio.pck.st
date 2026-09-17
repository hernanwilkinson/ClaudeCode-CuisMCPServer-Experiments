'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 6:03:36 pm'!
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
	instanceVariableNames: 'asientosDisponibles'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'ContadorDePasajerosSimulado class' category: #'2025-2C-Recuperatorio-Tests'!
ContadorDePasajerosSimulado class
	instanceVariableNames: ''!

!classDefinition: #DefinicionDeVuelo category: #'2025-2C-Recuperatorio'!
Object subclass: #DefinicionDeVuelo
	instanceVariableNames: 'codigo origen destino dias horaDePartida duracion costo'
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
	instanceVariableNames: 'descuento tramo monto'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoAplicado class' category: #'2025-2C-Recuperatorio'!
DescuentoAplicado class
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

!classDefinition: #Vuelo category: #'2025-2C-Recuperatorio'!
Object subclass: #Vuelo
	instanceVariableNames: 'definicion fecha'
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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'BuscadorTest class' category: #'2025-2C-Recuperatorio-Tests'!
BuscadorTest class
	instanceVariableNames: ''!


!Buscador methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializeDefiniciones: unasDefiniciones descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	definiciones := unasDefiniciones.
	descuentos := unosDescuentos.
	contadorDePasajeros := unContadorDePasajeros! !

!Buscador methodsFor: 'buscando' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vuelosDeIdaDesde: unOrigen hasta: unDestino el: unaFecha para: unaCantidadDePasajeros

	^self 
		vuelosMultitramos: (Array with: (TramoBuscado desde: unOrigen hasta: unDestino el: unaFecha))
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'buscando' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vuelosDeIdaYVueltaDesde: unOrigen hasta: unDestino saliendo: unaFechaDeIda regresando: unaFechaDeVuelta para: unaCantidadDePasajeros

	^self 
		vuelosMultitramos: (Array 
			with: (TramoBuscado desde: unOrigen hasta: unDestino el: unaFechaDeIda)
			with: (TramoBuscado desde: unDestino hasta: unOrigen el: unaFechaDeVuelta))
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'buscando' stamp: 'HAW 11/Sep/2026, 9:02:15 pm (UTC)'!
vuelosMultitramos: unosTramos para: unaCantidadDePasajeros

	^(self combinacionesDisponiblesPara: unosTramos para: unaCantidadDePasajeros)
		select: [ :vuelos | Viaje puedeArmarseCon: vuelos ]
		thenCollect: [ :vuelos | Viaje tramos: vuelos descuentos: descuentos ]! !

!Buscador methodsFor: 'buscando - private' stamp: 'HAW 11/Sep/2026, 9:03:05 pm (UTC)'!
combinacionesDisponiblesPara: unosTramos para: unaCantidadDePasajeros

	^(unosTramos collect: [ :tramo | 
		self vuelosDisponiblesPara: tramo para: unaCantidadDePasajeros ]) todasLasCombinaciones! !

!Buscador methodsFor: 'buscando - private' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vuelosDisponiblesPara: unTramo para: unaCantidadDePasajeros

	^(unTramo vuelosSegun: definiciones) select: [ :vuelo | 
		vuelo tieneLugarPara: unaCantidadDePasajeros segun: contadorDePasajeros ]! !

!Buscador class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
definiciones: unasDefiniciones descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	^self new 
		initializeDefiniciones: unasDefiniciones 
		descuentos: unosDescuentos 
		contadorDePasajeros: unContadorDePasajeros! !

!ContadorDePasajeros methodsFor: 'asientos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
asientosDisponiblesPara: unCodigoDeVuelo el: unaFecha

	self subclassResponsibility! !

!ContadorDePasajerosSimulado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
initializeRespondiendo: unCalculoDeAsientosDisponibles

	asientosDisponibles := unCalculoDeAsientosDisponibles! !

!ContadorDePasajerosSimulado methodsFor: 'asientos' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
asientosDisponiblesPara: unCodigoDeVuelo el: unaFecha

	^asientosDisponibles value: unCodigoDeVuelo value: unaFecha! !

!ContadorDePasajerosSimulado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
respondiendo: unCalculoDeAsientosDisponibles

	^self new initializeRespondiendo: unCalculoDeAsientosDisponibles! !

!DefinicionDeVuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializeCodigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDias partiendoA: unaHoraDePartida durante: unaDuracion costando: unCosto

	codigo := unCodigo.
	origen := unOrigen.
	destino := unDestino.
	dias := unosDias.
	horaDePartida := unaHoraDePartida.
	duracion := unaDuracion.
	costo := unCosto! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
codigo

	^codigo! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
costo

	^costo! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
destino

	^destino! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
origen

	^origen! !

!DefinicionDeVuelo methodsFor: 'horarios' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
llegadaEl: unaFecha

	^(self partidaEl: unaFecha) next: duracion! !

!DefinicionDeVuelo methodsFor: 'horarios' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
partidaEl: unaFecha

	^GregorianDateTime date: unaFecha timeOfDay: horaDePartida! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vuelaDesde: unOrigen hasta: unDestino

	^origen = unOrigen and: [ destino = unDestino ]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
vuelaDesde: unOrigen hasta: unDestino el: unaFecha

	^(self vuelaDesde: unOrigen hasta: unDestino) 
		and: [ dias includes: unaFecha day ]! !

!DefinicionDeVuelo methodsFor: 'vuelos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vueloEl: unaFecha

	^Vuelo de: self el: unaFecha! !

!DefinicionDeVuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
codigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDias partiendoA: unaHoraDePartida durante: unaDuracion costando: unCosto

	^self new 
		initializeCodigo: unCodigo 
		desde: unOrigen 
		hasta: unDestino 
		losDias: unosDias 
		partiendoA: unaHoraDePartida 
		durante: unaDuracion 
		costando: unCosto! !

!Descuento methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
aplicaA: unVuelo

	self subclassResponsibility! !

!Descuento methodsFor: 'aplicando' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
aplicadoA: unVuelo

	^DescuentoAplicado descuento: self monto: unVuelo costo * porcentaje / 100! !

!DescuentoPorFechaEspecial methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializePorcentaje: unPorcentaje el: unaFecha

	porcentaje := unPorcentaje.
	fecha := unaFecha! !

!DescuentoPorFechaEspecial methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo saleEl: fecha! !

!DescuentoPorFechaEspecial class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
porcentaje: unPorcentaje el: unaFecha

	^self new initializePorcentaje: unPorcentaje el: unaFecha! !

!DescuentoPorTramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializePorcentaje: unPorcentaje desde: unOrigen hasta: unDestino

	porcentaje := unPorcentaje.
	origen := unOrigen.
	destino := unDestino! !

!DescuentoPorTramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo vuelaDesde: origen hasta: destino! !

!DescuentoPorTramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
porcentaje: unPorcentaje desde: unOrigen hasta: unDestino

	^self new 
		initializePorcentaje: unPorcentaje 
		desde: unOrigen 
		hasta: unDestino! !

!DescuentoAplicado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializeDescuento: unDescuento monto: unMonto

	descuento := unDescuento.
	monto := unMonto! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
descuento

	^descuento! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
monto

	^monto! !

!DescuentoAplicado methodsFor: 'aplicando' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
descontadoDe: unCosto

	^unCosto - monto! !

!DescuentoAplicado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
descuento: unDescuento monto: unMonto

	^self new initializeDescuento: unDescuento monto: unMonto! !

!TramoBuscado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino el: unaFecha

	origen := unOrigen.
	destino := unDestino.
	fecha := unaFecha! !

!TramoBuscado methodsFor: 'vuelos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vuelosSegun: unasDefiniciones

	^unasDefiniciones 
		select: [ :definicion | definicion vuelaDesde: origen hasta: destino el: fecha ]
		thenCollect: [ :definicion | definicion vueloEl: fecha ]! !

!TramoBuscado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
desde: unOrigen hasta: unDestino el: unaFecha

	^self new initializeDesde: unOrigen hasta: unDestino el: unaFecha! !

!Viaje methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializeTramos: unosVuelos descuentos: unosDescuentos

	tramos := unosVuelos.
	descuentos := unosDescuentos! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
codigosDeVuelo

	^tramos collect: [ :tramo | tramo codigo ]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
destino

	^tramos last destino! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
llegada

	^tramos last llegada! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
origen

	^tramos first origen! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
partida

	^tramos first partida! !

!Viaje methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
costoBruto

	^tramos sum: [ :tramo | tramo costo ]! !

!Viaje methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
costoNeto

	^self descuentosAplicados 
		inject: self costoBruto 
		into: [ :costo :descuentoAplicado | descuentoAplicado descontadoDe: costo ]! !

!Viaje methodsFor: 'descuentos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
descuentosAplicados

	^tramos 
		inject: OrderedCollection new 
		into: [ :descuentosAplicados :tramo | 
			descuentosAplicados addAll: (self descuentosAplicadosA: tramo); yourself ]! !

!Viaje methodsFor: 'descuentos' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
descuentosAplicadosA: unTramo

	^descuentos 
		select: [ :descuento | descuento aplicaA: unTramo ]
		thenCollect: [ :descuento | descuento aplicadoA: unTramo ]! !

!Viaje class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
tramos: unosVuelos descuentos: unosDescuentos

	self assertPuedeArmarseCon: unosVuelos.
	
	^self new initializeTramos: unosVuelos descuentos: unosDescuentos! !

!Viaje class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
assertPuedeArmarseCon: unosVuelos

	(self puedeArmarseCon: unosVuelos) 
		ifFalse: [ self error: self tramosNoConsecutivosErrorDescription ]! !

!Viaje class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
puedeArmarseCon: unosVuelos

	^(2 to: unosVuelos size) allSatisfy: [ :indice | 
		(unosVuelos at: indice) saleDespuesDeLaLlegadaDe: (unosVuelos at: indice - 1) ]! !

!Viaje class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
tramosNoConsecutivosErrorDescription

	^'Cada tramo debe partir después de la llegada del tramo anterior'! !

!Vuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
initializeDe: unaDefinicion el: unaFecha

	definicion := unaDefinicion.
	fecha := unaFecha! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
codigo

	^definicion codigo! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
costo

	^definicion costo! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
destino

	^definicion destino! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
llegada

	^definicion llegadaEl: fecha! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
origen

	^definicion origen! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
partida

	^definicion partidaEl: fecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
saleDespuesDeLaLlegadaDe: unVuelo

	^self partida > unVuelo llegada! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
saleEl: unaFecha

	^fecha = unaFecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
tieneLugarPara: unaCantidadDePasajeros segun: unContadorDePasajeros

	^(unContadorDePasajeros asientosDisponiblesPara: self codigo el: fecha) >= unaCantidadDePasajeros! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
vuelaDesde: unOrigen hasta: unDestino

	^definicion vuelaDesde: unOrigen hasta: unDestino! !

!Vuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 8:59:36 pm (UTC)'!
de: unaDefinicion el: unaFecha

	^self new initializeDe: unaDefinicion el: unaFecha! !

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

!BuscadorTest methodsFor: 'definiciones de vuelo' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
ar100

	^DefinicionDeVuelo 
		codigo: 'AR100' 
		desde: 'Ezeiza' 
		hasta: 'Barcelona' 
		losDias: (Monday to: Sunday) 
		partiendoA: (TimeOfDay hours: 22) 
		durante: 12 * hour 
		costando: 1000 * dollar! !

!BuscadorTest methodsFor: 'definiciones de vuelo' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
ar101

	^DefinicionDeVuelo 
		codigo: 'AR101' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Sunday) 
		partiendoA: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar! !

!BuscadorTest methodsFor: 'definiciones de vuelo' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
definicionesDeVuelo

	^Array 
		with: self ar100 
		with: self ar101 
		with: self ib300 
		with: self ib503 
		with: self ib301! !

!BuscadorTest methodsFor: 'definiciones de vuelo' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
ib300

	^DefinicionDeVuelo 
		codigo: 'IB300' 
		desde: 'Ezeiza' 
		hasta: 'Barcelona' 
		losDias: (Monday to: Friday) 
		partiendoA: (TimeOfDay hours: 1) 
		durante: 12 * hour 
		costando: 1000 * dollar! !

!BuscadorTest methodsFor: 'definiciones de vuelo' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
ib301

	^DefinicionDeVuelo 
		codigo: 'IB301' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Friday) 
		partiendoA: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar! !

!BuscadorTest methodsFor: 'definiciones de vuelo' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
ib503

	^DefinicionDeVuelo 
		codigo: 'IB503' 
		desde: 'Madrid' 
		hasta: 'Paris' 
		losDias: (Monday to: Friday) 
		partiendoA: (TimeOfDay hours: 6) 
		durante: 1 * hour + (30 * minute) 
		costando: 300 * dollar! !

!BuscadorTest methodsFor: 'buscadores' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
buscador

	^self buscadorConDescuentos: #()! !

!BuscadorTest methodsFor: 'buscadores' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
buscadorConContadorDePasajeros: unContadorDePasajeros

	^Buscador 
		definiciones: self definicionesDeVuelo 
		descuentos: #() 
		contadorDePasajeros: unContadorDePasajeros! !

!BuscadorTest methodsFor: 'buscadores' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
buscadorConDescuentos: unosDescuentos

	^Buscador 
		definiciones: self definicionesDeVuelo 
		descuentos: unosDescuentos 
		contadorDePasajeros: self contadorDePasajerosConLugar! !

!BuscadorTest methodsFor: 'buscadores' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
contadorDePasajerosConLugar

	^ContadorDePasajerosSimulado respondiendo: [ :codigoDeVuelo :fecha | 10 ]! !

!BuscadorTest methodsFor: 'viajes' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
codigosDeVuelosDe: unosViajes

	^(unosViajes collect: [ :viaje | viaje codigosDeVuelo asArray ]) asArray! !

!BuscadorTest methodsFor: 'viajes' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
costosNetosDe: unosViajes

	^(unosViajes collect: [ :viaje | viaje costoNeto ]) asArray! !

!BuscadorTest methodsFor: 'viajes' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
tramosDeEzeizaABarcelonaYDeMadridAParis

	^Array 
		with: (TramoBuscado desde: 'Ezeiza' hasta: 'Barcelona' el: December / 13 / 2025)
		with: (TramoBuscado desde: 'Madrid' hasta: 'Paris' el: December / 15 / 2025)! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test01VuelosDeIdaOfreceLasDefinicionesQueVuelanDelOrigenAlDestinoEseDia

	| viajes |
	
	viajes := self buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 9 / 2025 
		para: 5.
	
	self assert: (self codigosDeVuelosDe: viajes) equals: #(#('AR100') #('IB300'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test02VuelosDeIdaNoOfreceLasDefinicionesQueNoVuelanEseDiaDeLaSemana

	| viajes |
	
	viajes := self buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 13 / 2025 
		para: 5.
	
	self assert: (self codigosDeVuelosDe: viajes) equals: #(#('AR100'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test03VuelosDeIdaNoOfreceLosVuelosSinLugarParaTodosLosPasajeros

	| contadorDePasajeros viajes |
	
	contadorDePasajeros := ContadorDePasajerosSimulado respondiendo: [ :codigoDeVuelo :fecha | 
		(codigoDeVuelo = 'IB300' and: [ fecha = (December / 9 / 2025) ]) 
			ifTrue: [ 4 ] 
			ifFalse: [ 10 ] ].
	
	viajes := (self buscadorConContadorDePasajeros: contadorDePasajeros) 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 9 / 2025 
		para: 5.
	
	self assert: (self codigosDeVuelosDe: viajes) equals: #(#('AR100'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test04VuelosDeIdaOfreceLosVuelosConLugarJustoParaTodosLosPasajeros

	| contadorDePasajeros viajes |
	
	contadorDePasajeros := ContadorDePasajerosSimulado respondiendo: [ :codigoDeVuelo :fecha | 5 ].
	
	viajes := (self buscadorConContadorDePasajeros: contadorDePasajeros) 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 9 / 2025 
		para: 5.
	
	self assert: (self codigosDeVuelosDe: viajes) equals: #(#('AR100') #('IB300'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test05ViajeDeIdaParteALaHoraDelVueloYLlegaLuegoDeSuDuracion

	| viaje |
	
	viaje := (self buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 13 / 2025 
		para: 1) first.
	
	self 
		assert: viaje partida 
		equals: (GregorianDateTime date: December / 13 / 2025 timeOfDay: (TimeOfDay hours: 22)).
	self 
		assert: viaje llegada 
		equals: (GregorianDateTime date: December / 14 / 2025 timeOfDay: (TimeOfDay hours: 10))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test06ViajeDeIdaSinDescuentosTieneCostoNetoIgualAlCostoDelVuelo

	| viaje |
	
	viaje := (self buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 13 / 2025 
		para: 1) first.
	
	self assert: viaje costoBruto equals: 1000 * dollar.
	self assert: viaje costoNeto equals: 1000 * dollar! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
test07VuelosDeIdaYVueltaOfreceLasCombinacionesDeVuelosDeIdaYDeVuelta

	| viajes |
	
	viajes := self buscador 
		vuelosDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendo: December / 9 / 2025 
		regresando: December / 15 / 2025 
		para: 5.
	
	self 
		assert: (self codigosDeVuelosDe: viajes) 
		equals: #(#('AR100' 'AR101') #('AR100' 'IB301') #('IB300' 'AR101') #('IB300' 'IB301'))! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
test08ViajeDeIdaYVueltaTieneCostoBrutoIgualALaSumaDeLaIdaYLaVuelta

	| viaje |
	
	viaje := (self buscador 
		vuelosDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendo: December / 13 / 2025 
		regresando: December / 14 / 2025 
		para: 1) first.
	
	self assert: viaje costoBruto equals: 1900 * dollar! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 9:00:37 pm (UTC)'!
test09VuelosMultitramosOfreceLasCombinacionesDeVuelosDeCadaTramo

	| tramos viajes |
	
	tramos := Array 
		with: (TramoBuscado desde: 'Ezeiza' hasta: 'Barcelona' el: December / 9 / 2025)
		with: (TramoBuscado desde: 'Madrid' hasta: 'Paris' el: December / 15 / 2025)
		with: (TramoBuscado desde: 'Barcelona' hasta: 'Ezeiza' el: December / 19 / 2025).
	
	viajes := self buscador vuelosMultitramos: tramos para: 1.
	
	self 
		assert: (self codigosDeVuelosDe: viajes) 
		equals: #(#('AR100' 'IB503' 'AR101') #('AR100' 'IB503' 'IB301') #('IB300' 'IB503' 'AR101') #('IB300' 'IB503' 'IB301'))! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test10VuelosMultitramosNoOfreceTramosQueSalenAntesDeLaLlegadaDelAnterior

	| tramos viajes |
	
	tramos := Array 
		with: (TramoBuscado desde: 'Ezeiza' hasta: 'Barcelona' el: December / 9 / 2025)
		with: (TramoBuscado desde: 'Barcelona' hasta: 'Ezeiza' el: December / 9 / 2025).
	
	viajes := self buscador vuelosMultitramos: tramos para: 1.
	
	self 
		assert: (self codigosDeVuelosDe: viajes) 
		equals: #(#('IB300' 'AR101') #('IB300' 'IB301'))! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test11ViajeMultitramosSaleDelOrigenDelPrimerTramoYLlegaAlDestinoDelUltimo

	| viaje |
	
	viaje := (self buscador 
		vuelosMultitramos: self tramosDeEzeizaABarcelonaYDeMadridAParis 
		para: 1) first.
	
	self assert: viaje origen equals: 'Ezeiza'.
	self assert: viaje destino equals: 'Paris'! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test12ViajeMultitramosParteConElPrimerTramoYLlegaConElUltimo

	| viaje |
	
	viaje := (self buscador 
		vuelosMultitramos: self tramosDeEzeizaABarcelonaYDeMadridAParis 
		para: 1) first.
	
	self 
		assert: viaje partida 
		equals: (GregorianDateTime date: December / 13 / 2025 timeOfDay: (TimeOfDay hours: 22)).
	self 
		assert: viaje llegada 
		equals: (GregorianDateTime 
			date: December / 15 / 2025 
			timeOfDay: (TimeOfDay hours: 7 minutes: 30))! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test13ViajeMultitramosTieneCostoBrutoIgualALaSumaDeSusTramos

	| viaje |
	
	viaje := (self buscador 
		vuelosMultitramos: self tramosDeEzeizaABarcelonaYDeMadridAParis 
		para: 1) first.
	
	self assert: viaje costoBruto equals: 1300 * dollar! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test19NoSePuedeCrearUnViajeConUnTramoQueSaleAntesDeLaLlegadaDelAnterior

	| tramos |
	
	tramos := Array 
		with: (self ar100 vueloEl: December / 9 / 2025) 
		with: (self ar101 vueloEl: December / 9 / 2025).
	
	self 
		should: [ Viaje tramos: tramos descuentos: #() ]
		raise: Error - MessageNotUnderstood
		withMessageText: Viaje tramosNoConsecutivosErrorDescription! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test14DescuentoPorFechaEspecialSeAplicaALosTramosQueSalenEsaFecha

	| buscador viajes |
	
	buscador := self buscadorConDescuentos: 
		(Array with: (DescuentoPorFechaEspecial porcentaje: 10 el: December / 25 / 2025)).
	
	viajes := buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 25 / 2025 
		para: 1.
	
	self 
		assert: (self costosNetosDe: viajes) 
		equals: (Array with: 900 * dollar with: 900 * dollar)! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test15DescuentoPorFechaEspecialNoSeAplicaALosTramosQueSalenOtraFecha

	| buscador viajes |
	
	buscador := self buscadorConDescuentos: 
		(Array with: (DescuentoPorFechaEspecial porcentaje: 10 el: December / 25 / 2025)).
	
	viajes := buscador 
		vuelosDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendo: December / 25 / 2025 
		regresando: December / 27 / 2025 
		para: 1.
	
	self 
		assert: (self costosNetosDe: viajes) 
		equals: (Array with: 1800 * dollar with: 1800 * dollar)! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test16DescuentoPorTramoSeAplicaSoloALosTramosDeEseOrigenYDestino

	| buscador viajes |
	
	buscador := self buscadorConDescuentos: 
		(Array with: (DescuentoPorTramo porcentaje: 20 desde: 'Barcelona' hasta: 'Ezeiza')).
	
	viajes := buscador 
		vuelosDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendo: December / 13 / 2025 
		regresando: December / 14 / 2025 
		para: 1.
	
	self assert: (self costosNetosDe: viajes) equals: (Array with: 1720 * dollar)! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test17VariosDescuentosSobreUnTramoSeCalculanSobreElCostoBruto

	| buscador viajes |
	
	buscador := self buscadorConDescuentos: (Array 
		with: (DescuentoPorFechaEspecial porcentaje: 10 el: December / 27 / 2025)
		with: (DescuentoPorTramo porcentaje: 20 desde: 'Ezeiza' hasta: 'Barcelona')).
	
	viajes := buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 27 / 2025 
		para: 1.
	
	self assert: (self costosNetosDe: viajes) equals: (Array with: 700 * dollar)! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 9:02:56 pm (UTC)'!
test18ViajeInformaLosDescuentosAplicadosYSusMontos

	| descuentoPorFechaEspecial descuentoPorTramo buscador descuentosAplicados |
	
	descuentoPorFechaEspecial := DescuentoPorFechaEspecial porcentaje: 10 el: December / 27 / 2025.
	descuentoPorTramo := DescuentoPorTramo porcentaje: 20 desde: 'Ezeiza' hasta: 'Barcelona'.
	buscador := self buscadorConDescuentos: 
		(Array with: descuentoPorFechaEspecial with: descuentoPorTramo).
	
	descuentosAplicados := (buscador 
		vuelosDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December / 27 / 2025 
		para: 1) first descuentosAplicados.
	
	self 
		assert: (descuentosAplicados collect: [ :descuentoAplicado | descuentoAplicado descuento ]) asArray 
		equals: (Array with: descuentoPorFechaEspecial with: descuentoPorTramo).
	self 
		assert: (descuentosAplicados collect: [ :descuentoAplicado | descuentoAplicado monto ]) asArray 
		equals: (Array with: 100 * dollar with: 200 * dollar)! !

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
