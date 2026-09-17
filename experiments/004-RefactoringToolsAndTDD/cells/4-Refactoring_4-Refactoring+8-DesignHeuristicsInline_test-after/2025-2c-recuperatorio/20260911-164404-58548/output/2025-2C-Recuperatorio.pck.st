'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 4:52:14 pm'!
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

!classDefinition: #DescuentoAplicado category: #'2025-2C-Recuperatorio'!
Object subclass: #DescuentoAplicado
	instanceVariableNames: 'descuento monto'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'DescuentoAplicado class' category: #'2025-2C-Recuperatorio'!
DescuentoAplicado class
	instanceVariableNames: ''!

!classDefinition: #TramoSolicitado category: #'2025-2C-Recuperatorio'!
Object subclass: #TramoSolicitado
	instanceVariableNames: 'origen destino fecha'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'TramoSolicitado class' category: #'2025-2C-Recuperatorio'!
TramoSolicitado class
	instanceVariableNames: ''!

!classDefinition: #Viaje category: #'2025-2C-Recuperatorio'!
Object subclass: #Viaje
	instanceVariableNames: 'vuelos cantidadDePasajeros descuentos'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!
!classDefinition: 'Viaje class' category: #'2025-2C-Recuperatorio'!
Viaje class
	instanceVariableNames: ''!

!classDefinition: #Vuelo category: #'2025-2C-Recuperatorio'!
Object subclass: #Vuelo
	instanceVariableNames: 'definicion salida'
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
	instanceVariableNames: 'ar100 ar101 ib300 ib503 ib301'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'BuscadorTest class' category: #'2025-2C-Recuperatorio-Tests'!
BuscadorTest class
	instanceVariableNames: ''!


!Buscador methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeConDefiniciones: unasDefinicionesDeVuelos descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	definiciones := unasDefinicionesDeVuelos.
	descuentos := unosDescuentos.
	contadorDePasajeros := unContadorDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
viajesDeIdaDesde: unOrigen hasta: unDestino el: unaFecha para: unaCantidadDePasajeros

	^self 
		viajesMultitramosPor: (OrderedCollection with: (TramoSolicitado desde: unOrigen hasta: unDestino el: unaFecha)) 
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
viajesDeIdaYVueltaDesde: unOrigen hasta: unDestino saliendoEl: unaFechaDeIda regresandoEl: unaFechaDeVuelta para: unaCantidadDePasajeros

	^self 
		viajesMultitramosPor: (OrderedCollection 
			with: (TramoSolicitado desde: unOrigen hasta: unDestino el: unaFechaDeIda) 
			with: (TramoSolicitado desde: unDestino hasta: unOrigen el: unaFechaDeVuelta)) 
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'searching' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
viajesMultitramosPor: unosTramosSolicitados para: unaCantidadDePasajeros

	^(self combinacionesDeVuelosPara: unosTramosSolicitados con: unaCantidadDePasajeros) 
		collect: [ :vuelos | Viaje de: vuelos para: unaCantidadDePasajeros aplicando: descuentos ]! !

!Buscador methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
combinacionesDeVuelosPara: unosTramosSolicitados con: unaCantidadDePasajeros

	^(self vuelosPorTramoPara: unosTramosSolicitados con: unaCantidadDePasajeros) todasLasCombinaciones 
		select: [ :vuelos | Viaje seSucedenLos: vuelos ]! !

!Buscador methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vuelosDisponiblesPara: unTramoSolicitado con: unaCantidadDePasajeros

	^(unTramoSolicitado vuelosEntre: definiciones) 
		select: [ :vuelo | vuelo tieneLugarPara: unaCantidadDePasajeros segun: contadorDePasajeros ]! !

!Buscador methodsFor: 'searching - private' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vuelosPorTramoPara: unosTramosSolicitados con: unaCantidadDePasajeros

	^unosTramosSolicitados collect: [ :tramoSolicitado | self vuelosDisponiblesPara: tramoSolicitado con: unaCantidadDePasajeros ]! !

!Buscador class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
conDefiniciones: unasDefinicionesDeVuelos descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	^self new 
		initializeConDefiniciones: unasDefinicionesDeVuelos 
		descuentos: unosDescuentos 
		contadorDePasajeros: unContadorDePasajeros! !

!ContadorDePasajeros methodsFor: 'seats' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
asientosDisponiblesEn: unCodigoDeVuelo el: unaFecha

	self subclassResponsibility! !

!ContadorDePasajerosSimulado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
initializeRespondiendo: unBloqueDeAsientosDisponibles

	asientosDisponibles := unBloqueDeAsientosDisponibles! !

!ContadorDePasajerosSimulado methodsFor: 'seats' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
asientosDisponiblesEn: unCodigoDeVuelo el: unaFecha

	^asientosDisponibles value: unCodigoDeVuelo value: unaFecha! !

!ContadorDePasajerosSimulado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
respondiendo: unBloqueDeAsientosDisponibles

	^self new initializeRespondiendo: unBloqueDeAsientosDisponibles! !

!DefinicionDeVuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeCodigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDeSalida duracion: unaDuracion costo: unCosto

	codigo := unCodigo.
	origen := unOrigen.
	destino := unDestino.
	diasDeLaSemana := unosDiasDeLaSemana.
	horaDeSalida := unaHoraDeSalida.
	duracion := unaDuracion.
	costo := unCosto! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
codigo

	^codigo! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
destino

	^destino! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
origen

	^origen! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
operaEl: unaFecha

	^diasDeLaSemana includes: unaFecha day! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
tieneLugarPara: unaCantidadDePasajeros el: unaFecha segun: unContadorDePasajeros

	^(unContadorDePasajeros asientosDisponiblesEn: codigo el: unaFecha) >= unaCantidadDePasajeros! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vaDesde: unOrigen hasta: unDestino

	^origen = unOrigen and: [ destino = unDestino ]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vaDesde: unOrigen hasta: unDestino operandoEl: unaFecha

	^(self vaDesde: unOrigen hasta: unDestino) and: [ self operaEl: unaFecha ]! !

!DefinicionDeVuelo methodsFor: 'flights' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
llegadaSaliendo: unaSalida

	^unaSalida next: duracion! !

!DefinicionDeVuelo methodsFor: 'flights' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vueloEl: unaFecha

	^Vuelo de: self saliendo: (unaFecha atTimeOfDay: horaDeSalida)! !

!DefinicionDeVuelo methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
costoPara: unaCantidadDePasajeros

	^costo * unaCantidadDePasajeros! !

!DefinicionDeVuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
codigo: unCodigo desde: unOrigen hasta: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDeSalida duracion: unaDuracion costo: unCosto

	^self new 
		initializeCodigo: unCodigo 
		desde: unOrigen 
		hasta: unDestino 
		losDias: unosDiasDeLaSemana 
		aLas: unaHoraDeSalida 
		duracion: unaDuracion 
		costo: unCosto! !

!Descuento methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
aplicaA: unVuelo

	self subclassResponsibility! !

!Descuento methodsFor: 'applying' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
aplicadoA: unVuelo para: unaCantidadDePasajeros

	^DescuentoAplicado de: self por: (self montoPara: unVuelo con: unaCantidadDePasajeros)! !

!Descuento methodsFor: 'applying' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
montoPara: unVuelo con: unaCantidadDePasajeros

	^(unVuelo costoPara: unaCantidadDePasajeros) * porcentaje / 100! !

!DescuentoPorFechaEspecial methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeEl: unaFecha porcentaje: unPorcentaje

	fecha := unaFecha.
	porcentaje := unPorcentaje! !

!DescuentoPorFechaEspecial methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo saleEl: fecha! !

!DescuentoPorFechaEspecial class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
el: unaFecha porcentaje: unPorcentaje

	^self new initializeEl: unaFecha porcentaje: unPorcentaje! !

!DescuentoPorTramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino porcentaje: unPorcentaje

	origen := unOrigen.
	destino := unDestino.
	porcentaje := unPorcentaje! !

!DescuentoPorTramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo vaDesde: origen hasta: destino! !

!DescuentoPorTramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
desde: unOrigen hasta: unDestino porcentaje: unPorcentaje

	^self new initializeDesde: unOrigen hasta: unDestino porcentaje: unPorcentaje! !

!DescuentoAplicado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeDe: unDescuento por: unMonto

	descuento := unDescuento.
	monto := unMonto! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
descuento

	^descuento! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
monto

	^monto! !

!DescuentoAplicado methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
= unObjeto

	^self class = unObjeto class and: [ descuento = unObjeto descuento and: [ monto = unObjeto monto ] ]! !

!DescuentoAplicado methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
hash

	^descuento hash bitXor: monto hash! !

!DescuentoAplicado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
de: unDescuento por: unMonto

	^self new initializeDe: unDescuento por: unMonto! !

!TramoSolicitado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeDesde: unOrigen hasta: unDestino el: unaFecha

	origen := unOrigen.
	destino := unDestino.
	fecha := unaFecha! !

!TramoSolicitado methodsFor: 'flights' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vuelosEntre: unasDefinicionesDeVuelos

	^(unasDefinicionesDeVuelos select: [ :definicion | definicion vaDesde: origen hasta: destino operandoEl: fecha ]) 
		collect: [ :definicion | definicion vueloEl: fecha ]! !

!TramoSolicitado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
desde: unOrigen hasta: unDestino el: unaFecha

	^self new initializeDesde: unOrigen hasta: unDestino el: unaFecha! !

!Viaje methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeDe: unosVuelos para: unaCantidadDePasajeros aplicando: unosDescuentos

	vuelos := unosVuelos.
	cantidadDePasajeros := unaCantidadDePasajeros.
	descuentos := unosDescuentos! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
codigosDeVuelos

	^vuelos collect: [ :vuelo | vuelo codigo ]! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
destinoFinal

	^vuelos last destino! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
llegada

	^vuelos last llegada! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
origen

	^vuelos first origen! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
salida

	^vuelos first salida! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
costoBruto

	^vuelos sum: [ :vuelo | vuelo costoPara: cantidadDePasajeros ]! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
costoNeto

	^self costoBruto - self totalDescontado! !

!Viaje methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
totalDescontado

	^self descuentosAplicados sum: [ :descuentoAplicado | descuentoAplicado monto ] ifEmpty: [ 0 ]! !

!Viaje methodsFor: 'discounts' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
descuentosAplicados

	^(vuelos collect: [ :vuelo | self descuentosAplicadosA: vuelo ]) concatenation! !

!Viaje methodsFor: 'discounts' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
descuentosAplicadosA: unVuelo

	^(descuentos select: [ :descuento | descuento aplicaA: unVuelo ]) 
		collect: [ :descuento | descuento aplicadoA: unVuelo para: cantidadDePasajeros ]! !

!Viaje class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
de: unosVuelos para: unaCantidadDePasajeros aplicando: unosDescuentos

	self assertSeSucedenLos: unosVuelos.

	^self new initializeDe: unosVuelos para: unaCantidadDePasajeros aplicando: unosDescuentos! !

!Viaje class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
assertSeSucedenLos: unosVuelos

	(self seSucedenLos: unosVuelos) ifFalse: [ self error: self vuelosQueNoSeSucedenErrorDescription ]! !

!Viaje class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
seSucedenLos: unosVuelos

	^(2 to: unosVuelos size) allSatisfy: [ :posicion | (unosVuelos at: posicion) saleDespuesDe: (unosVuelos at: posicion - 1) ]! !

!Viaje class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vuelosQueNoSeSucedenErrorDescription

	^'Cada vuelo debe salir después de la llegada del vuelo anterior'! !

!Vuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
initializeDe: unaDefinicionDeVuelo saliendo: unaSalida

	definicion := unaDefinicionDeVuelo.
	salida := unaSalida! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
codigo

	^definicion codigo! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
destino

	^definicion destino! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
llegada

	^definicion llegadaSaliendo: salida! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
origen

	^definicion origen! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
salida

	^salida! !

!Vuelo methodsFor: 'costs' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
costoPara: unaCantidadDePasajeros

	^definicion costoPara: unaCantidadDePasajeros! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
saleDespuesDe: unVuelo

	^unVuelo llegada < salida! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
saleEl: unaFecha

	^salida date = unaFecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
tieneLugarPara: unaCantidadDePasajeros segun: unContadorDePasajeros

	^definicion 
		tieneLugarPara: unaCantidadDePasajeros 
		el: salida date 
		segun: unContadorDePasajeros! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
vaDesde: unOrigen hasta: unDestino

	^definicion vaDesde: unOrigen hasta: unDestino! !

!Vuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:48:42 pm (UTC)'!
de: unaDefinicionDeVuelo saliendo: unaSalida

	^self new initializeDe: unaDefinicionDeVuelo saliendo: unaSalida! !

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

!BuscadorTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
setUp

	ar100 := DefinicionDeVuelo 
		codigo: 'AR100' 
		desde: 'Ezeiza' 
		hasta: 'Barcelona' 
		losDias: (Monday to: Sunday) 
		aLas: (TimeOfDay hours: 22) 
		duracion: 12 * hour 
		costo: 1000 * dollar.
	ar101 := DefinicionDeVuelo 
		codigo: 'AR101' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Sunday) 
		aLas: (TimeOfDay hours: 14) 
		duracion: 12 * hour 
		costo: 900 * dollar.
	ib300 := DefinicionDeVuelo 
		codigo: 'IB300' 
		desde: 'Ezeiza' 
		hasta: 'Barcelona' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 1) 
		duracion: 12 * hour 
		costo: 1000 * dollar.
	ib503 := DefinicionDeVuelo 
		codigo: 'IB503' 
		desde: 'Madrid' 
		hasta: 'Paris' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 6) 
		duracion: 90 * minute 
		costo: 300 * dollar.
	ib301 := DefinicionDeVuelo 
		codigo: 'IB301' 
		desde: 'Barcelona' 
		hasta: 'Ezeiza' 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 14) 
		duracion: 12 * hour 
		costo: 900 * dollar! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
buscadorCon: unContadorDePasajeros

	^Buscador 
		conDefiniciones: self definiciones 
		descuentos: #() 
		contadorDePasajeros: unContadorDePasajeros! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
buscadorConDescuentos: unosDescuentos

	^Buscador 
		conDefiniciones: self definiciones 
		descuentos: unosDescuentos 
		contadorDePasajeros: self contadorConLugarEnTodosLosVuelos! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
codigosDe: unosViajes

	^(unosViajes collect: [ :viaje | viaje codigosDeVuelos asArray ]) asArray! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
contadorCon: unaCantidadDeAsientos asientosEn: unCodigoDeVuelo

	^ContadorDePasajerosSimulado respondiendo: [ :codigo :fecha | 
		codigo = unCodigoDeVuelo ifTrue: [ unaCantidadDeAsientos ] ifFalse: [ 10 ] ]! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
contadorConLugarEnTodosLosVuelos

	^ContadorDePasajerosSimulado respondiendo: [ :codigo :fecha | 10 ]! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
contadorSinAsientosEnIberia

	^ContadorDePasajerosSimulado respondiendo: [ :codigo :fecha | 
		(codigo beginsWith: 'IB') ifTrue: [ 0 ] ifFalse: [ 10 ] ]! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
definiciones

	^OrderedCollection with: ar100 with: ar101 with: ib300 with: ib503 with: ib301! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
tramosDelEnunciado

	^OrderedCollection 
		with: (TramoSolicitado desde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025) 
		with: (TramoSolicitado desde: 'Madrid' hasta: 'Paris' el: December fifteenth, 2025) 
		with: (TramoSolicitado desde: 'Barcelona' hasta: 'Ezeiza' el: December nineteenth, 2025)! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
viajeDeIdaEnAR100ParaCincoPasajerosCon: unosDescuentos

	^((self buscadorConDescuentos: unosDescuentos) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5) first! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
viajeDeIdaYVueltaEnAerolineasParaCincoPasajerosCon: unosDescuentos

	^((self buscadorConDescuentos: unosDescuentos) 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		regresandoEl: December fifteenth, 2025 
		para: 5) first! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
viajeMultitramosParaUnPasajeroCon: unosDescuentos

	^((self buscadorConDescuentos: unosDescuentos) 
		viajesMultitramosPor: self tramosDelEnunciado 
		para: 1) first! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test01ViajeDeIdaOfreceLosVuelosQueOperanEseDiaDesdeElOrigenAlDestino

	| viajes |
	
	viajes := (self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #(#('AR100') #('IB300'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test02ViajeDeIdaNoOfreceVuelosQueNoOperanEseDiaDeLaSemana

	| viajes |
	
	viajes := (self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December thirteenth, 2025 
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #(#('AR100'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test03ViajeDeIdaNoOfreceVuelosSinAsientosParaTodosLosPasajeros

	| viajes |
	
	viajes := (self buscadorCon: (self contadorCon: 4 asientosEn: 'IB300')) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #(#('AR100'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test04ViajeDeIdaOfreceVuelosConTantosAsientosComoPasajeros

	| viajes |
	
	viajes := (self buscadorCon: (self contadorCon: 5 asientosEn: 'IB300')) 
		viajesDeIdaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		el: December ninth, 2025 
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #(#('AR100') #('IB300'))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test05ViajeDeIdaInformaElAeropuertoDeOrigenYElDeDestinoFinal

	| viaje |
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: #().
	
	self assert: viaje origen equals: 'Ezeiza'.
	self assert: viaje destinoFinal equals: 'Barcelona'! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test06ViajeDeIdaInformaElDiaYHoraDeSalidaYDeLlegadaSinDemoras

	| viaje |
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: #().
	
	self assert: viaje salida equals: (December ninth, 2025 atTimeOfDay: (TimeOfDay hours: 22)).
	self assert: viaje llegada equals: (December tenth, 2025 atTimeOfDay: (TimeOfDay hours: 10))! !

!BuscadorTest methodsFor: 'tests - ida' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test07ViajeDeIdaSinDescuentosTieneCostoBrutoYNetoDelVueloPorLosPasajeros

	| viaje |
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: #().
	
	self assert: viaje costoBruto equals: 5000 * dollar.
	self assert: viaje costoNeto equals: 5000 * dollar! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test08ViajeDeIdaYVueltaOfreceLasCombinacionesDeVuelosDeIdaYDeVuelta

	| viajes |
	
	viajes := (self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		regresandoEl: December fifteenth, 2025 
		para: 5.
	
	self 
		assert: (self codigosDe: viajes) 
		equals: #(#('AR100' 'AR101') #('AR100' 'IB301') #('IB300' 'AR101') #('IB300' 'IB301'))! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test09ViajeDeIdaYVueltaSinAsientosEnIberiaOfreceSoloLosVuelosDeAerolineas

	| viajes |
	
	viajes := (self buscadorCon: self contadorSinAsientosEnIberia) 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		regresandoEl: December fifteenth, 2025 
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #(#('AR100' 'AR101'))! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test10ViajeDeIdaYVueltaNoOfreceVueltasQueSalenAntesDeLlegarLaIda

	| viajes |
	
	viajes := (self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		regresandoEl: December ninth, 2025 
		para: 5.
	
	self assert: (self codigosDe: viajes) equals: #(#('IB300' 'AR101') #('IB300' 'IB301'))! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test11ViajeDeIdaYVueltaTieneComoCostoBrutoLaSumaDeLaIdaYLaVuelta

	| viaje |
	
	viaje := self viajeDeIdaYVueltaEnAerolineasParaCincoPasajerosCon: #().
	
	self assert: viaje costoBruto equals: 9500 * dollar! !

!BuscadorTest methodsFor: 'tests - ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test12ViajeDeIdaYVueltaInformaLaSalidaDeLaIdaYLaLlegadaDeLaVuelta

	| viaje |
	
	viaje := self viajeDeIdaYVueltaEnAerolineasParaCincoPasajerosCon: #().
	
	self assert: viaje salida equals: (December ninth, 2025 atTimeOfDay: (TimeOfDay hours: 22)).
	self assert: viaje llegada equals: (December sixteenth, 2025 atTimeOfDay: (TimeOfDay hours: 2))! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test13ViajeMultitramosOfreceTodasLasCombinacionesDeVuelosDeLosTramos

	| viajes |
	
	viajes := (self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesMultitramosPor: self tramosDelEnunciado 
		para: 1.
	
	self 
		assert: (self codigosDe: viajes) 
		equals: #(#('AR100' 'IB503' 'AR101') #('AR100' 'IB503' 'IB301') #('IB300' 'IB503' 'AR101') #('IB300' 'IB503' 'IB301'))! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test14ViajeMultitramosNoOfreceCombinacionesConUnTramoQueSaleAntesDeLlegarElAnterior

	| viajes |
	
	viajes := (self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesMultitramosPor: (OrderedCollection 
			with: (TramoSolicitado desde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025) 
			with: (TramoSolicitado desde: 'Madrid' hasta: 'Paris' el: December tenth, 2025)) 
		para: 1.
	
	self assert: (self codigosDe: viajes) equals: #(#('IB300' 'IB503'))! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test15ViajeMultitramosTieneComoCostoBrutoLaSumaDeLosTramos

	| viaje |
	
	viaje := self viajeMultitramosParaUnPasajeroCon: #().
	
	self assert: viaje costoBruto equals: 2200 * dollar! !

!BuscadorTest methodsFor: 'tests - multitramos' stamp: 'HAW 11/Sep/2026, 7:51:40 pm (UTC)'!
test16ViajeMultitramosInformaElOrigenDelPrimerTramoYElDestinoDelUltimo

	| viaje |
	
	viaje := ((self buscadorCon: self contadorConLugarEnTodosLosVuelos) 
		viajesMultitramosPor: (OrderedCollection 
			with: (TramoSolicitado desde: 'Ezeiza' hasta: 'Barcelona' el: December ninth, 2025) 
			with: (TramoSolicitado desde: 'Madrid' hasta: 'Paris' el: December fifteenth, 2025)) 
		para: 1) first.
	
	self assert: viaje origen equals: 'Ezeiza'.
	self assert: viaje destinoFinal equals: 'Paris'! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test17DescuentoPorFechaEspecialSeAplicaAlTramoQueSaleEsaFecha

	| descuento viaje |
	
	descuento := DescuentoPorFechaEspecial el: December ninth, 2025 porcentaje: 10.
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: (Array with: descuento).
	
	self 
		assert: viaje descuentosAplicados asArray 
		equals: (Array with: (DescuentoAplicado de: descuento por: 500 * dollar))! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test18DescuentoPorFechaEspecialNoSeAplicaAlTramoQueSaleOtraFecha

	| viaje |
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: 
		(Array with: (DescuentoPorFechaEspecial el: December tenth, 2025 porcentaje: 10)).
	
	self assert: viaje descuentosAplicados isEmpty! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test19DescuentoPorFechaEspecialSeRestaDelCostoBrutoEnElCostoNeto

	| viaje |
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: 
		(Array with: (DescuentoPorFechaEspecial el: December ninth, 2025 porcentaje: 10)).
	
	self assert: viaje costoNeto equals: 4500 * dollar! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test20DescuentoPorTramoSeAplicaSoloAlVueloDeEseOrigenYDestino

	| descuento viaje |
	
	descuento := DescuentoPorTramo desde: 'Barcelona' hasta: 'Ezeiza' porcentaje: 20.
	
	viaje := self viajeDeIdaYVueltaEnAerolineasParaCincoPasajerosCon: (Array with: descuento).
	
	self 
		assert: viaje descuentosAplicados asArray 
		equals: (Array with: (DescuentoAplicado de: descuento por: 900 * dollar))! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test21VariosDescuentosSobreUnTramoSeCalculanSobreElCostoBruto

	| viaje |
	
	viaje := self viajeDeIdaEnAR100ParaCincoPasajerosCon: (Array 
		with: (DescuentoPorFechaEspecial el: December ninth, 2025 porcentaje: 10) 
		with: (DescuentoPorTramo desde: 'Ezeiza' hasta: 'Barcelona' porcentaje: 20)).
	
	self assert: viaje costoNeto equals: 3500 * dollar! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:40 pm (UTC)'!
test22DescuentoPorFechaEspecialSeAplicaEnCadaTramoQueSaleEsaFecha

	| descuento viaje |
	
	descuento := DescuentoPorFechaEspecial el: December ninth, 2025 porcentaje: 10.
	
	viaje := ((self buscadorConDescuentos: (Array with: descuento)) 
		viajesDeIdaYVueltaDesde: 'Ezeiza' 
		hasta: 'Barcelona' 
		saliendoEl: December ninth, 2025 
		regresandoEl: December ninth, 2025 
		para: 1) first.
	
	self 
		assert: viaje descuentosAplicados asArray 
		equals: (Array 
			with: (DescuentoAplicado de: descuento por: 100 * dollar) 
			with: (DescuentoAplicado de: descuento por: 90 * dollar))! !

!BuscadorTest methodsFor: 'tests - viaje' stamp: 'HAW 11/Sep/2026, 7:51:27 pm (UTC)'!
test23NoSePuedeCrearUnViajeConUnVueloQueSaleAntesDeLlegarElAnterior

	| vuelos |
	
	vuelos := OrderedCollection 
		with: (ar100 vueloEl: December ninth, 2025) 
		with: (ib300 vueloEl: December ninth, 2025).
	
	self 
		should: [ Viaje de: vuelos para: 1 aplicando: #() ] 
		raise: Error 
		withMessageText: Viaje vuelosQueNoSeSucedenErrorDescription! !

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
