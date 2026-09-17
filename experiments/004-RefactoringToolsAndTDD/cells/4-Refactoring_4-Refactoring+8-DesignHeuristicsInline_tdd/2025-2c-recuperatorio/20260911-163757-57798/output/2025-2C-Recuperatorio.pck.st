'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 4:53:08 pm'!
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
	instanceVariableNames: 'vuelos pasajeros descuentos'
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
	instanceVariableNames: 'ar100 ar101 ib300 ib503 ib301 asientosDisponibles'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio-Tests'!
!classDefinition: 'BuscadorTest class' category: #'2025-2C-Recuperatorio-Tests'!
BuscadorTest class
	instanceVariableNames: ''!


!Buscador methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
initializeDefiniciones: unasDefiniciones descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	definiciones := unasDefiniciones.
	descuentos := unosDescuentos.
	contadorDePasajeros := unContadorDePasajeros! !

!Buscador methodsFor: 'búsqueda' stamp: 'HAW 11/Sep/2026, 7:47:06 pm (UTC)'!
viajesDeIdaDesde: unOrigen hacia: unDestino saliendoEl: unaFecha para: unaCantidadDePasajeros

	^self 
		viajesMultitramos: { Tramo desde: unOrigen hacia: unDestino el: unaFecha } 
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'búsqueda' stamp: 'HAW 11/Sep/2026, 7:47:06 pm (UTC)'!
viajesDeIdaYVueltaDesde: unOrigen hacia: unDestino saliendoEl: unaFechaDeIda volviendoEl: unaFechaDeVuelta para: unaCantidadDePasajeros

	^self 
		viajesMultitramos: { 
			Tramo desde: unOrigen hacia: unDestino el: unaFechaDeIda.
			Tramo desde: unDestino hacia: unOrigen el: unaFechaDeVuelta }
		para: unaCantidadDePasajeros! !

!Buscador methodsFor: 'búsqueda' stamp: 'HAW 11/Sep/2026, 7:49:09 pm (UTC)'!
viajesMultitramos: unosTramos para: unaCantidadDePasajeros

	^((self combinacionesDeVuelosPara: unosTramos para: unaCantidadDePasajeros) 
		select: [ :vuelos | Viaje puedeFormarseCon: vuelos ])
			collect: [ :vuelos | Viaje vuelos: vuelos para: unaCantidadDePasajeros conDescuentos: descuentos ]! !

!Buscador methodsFor: 'búsqueda - private' stamp: 'HAW 11/Sep/2026, 7:52:48 pm (UTC)'!
combinacionesDeVuelosPara: unosTramos para: unaCantidadDePasajeros

	^(unosTramos 
		collect: [ :tramo | self vuelosPara: tramo para: unaCantidadDePasajeros ]) todasLasCombinaciones! !

!Buscador methodsFor: 'búsqueda - private' stamp: 'HAW 11/Sep/2026, 7:46:45 pm (UTC)'!
vuelosPara: unTramo para: unaCantidadDePasajeros

	^(unTramo vuelosEntre: definiciones) 
		select: [ :vuelo | vuelo tieneLugarPara: unaCantidadDePasajeros segun: contadorDePasajeros ]! !

!Buscador class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
definiciones: unasDefiniciones descuentos: unosDescuentos contadorDePasajeros: unContadorDePasajeros

	^self new 
		initializeDefiniciones: unasDefiniciones 
		descuentos: unosDescuentos 
		contadorDePasajeros: unContadorDePasajeros! !

!DefinicionDeVuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
initializeCodigo: unCodigo desde: unOrigen hacia: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDeSalida durante: unaDuracion costando: unCosto

	codigo := unCodigo.
	origen := unOrigen.
	destino := unDestino.
	diasDeLaSemana := unosDiasDeLaSemana.
	horaDeSalida := unaHoraDeSalida.
	duracion := unaDuracion.
	costo := unCosto! !

!DefinicionDeVuelo methodsFor: 'vuelos' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
vueloEl: unaFecha

	^Vuelo de: self el: unaFecha! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:44:27 pm (UTC)'!
tieneLugarPara: unaCantidadDePasajeros el: unaFecha segun: unContadorDePasajeros

	^(unContadorDePasajeros asientosDisponiblesPara: codigo el: unaFecha) >= unaCantidadDePasajeros! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:50:25 pm (UTC)'!
vuelaDesde: unOrigen hacia: unDestino

	^origen = unOrigen and: [ destino = unDestino ]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:50:25 pm (UTC)'!
vuelaDesde: unOrigen hacia: unDestino el: unaFecha

	^(self vuelaDesde: unOrigen hacia: unDestino) and: [ self vuelaEl: unaFecha ]! !

!DefinicionDeVuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:43:32 pm (UTC)'!
vuelaEl: unaFecha

	^diasDeLaSemana includes: unaFecha day! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
destino

	^destino! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
llegadaEl: unaFecha

	^(self salidaEl: unaFecha) next: duracion! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
origen

	^origen! !

!DefinicionDeVuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
salidaEl: unaFecha

	^unaFecha atTimeOfDay: horaDeSalida! !

!DefinicionDeVuelo methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 7:45:37 pm (UTC)'!
costoPara: unaCantidadDePasajeros

	^costo * unaCantidadDePasajeros! !

!DefinicionDeVuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
codigo: unCodigo desde: unOrigen hacia: unDestino losDias: unosDiasDeLaSemana aLas: unaHoraDeSalida durante: unaDuracion costando: unCosto

	^self new 
		initializeCodigo: unCodigo 
		desde: unOrigen 
		hacia: unDestino 
		losDias: unosDiasDeLaSemana 
		aLas: unaHoraDeSalida 
		durante: unaDuracion 
		costando: unCosto! !

!Descuento methodsFor: 'montos' stamp: 'HAW 11/Sep/2026, 7:51:05 pm (UTC)'!
montoSobre: unCosto

	^unCosto * porcentaje / 100! !

!Descuento methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:51:05 pm (UTC)'!
aplicaA: unVuelo

	self subclassResponsibility! !

!Descuento methodsFor: 'aplicación' stamp: 'HAW 11/Sep/2026, 7:51:52 pm (UTC)'!
aplicadoSobre: unCosto

	^DescuentoAplicado de: self por: (self montoSobre: unCosto)! !

!DescuentoPorFechaEspecial methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:49:22 pm (UTC)'!
initializePara: unaFecha porcentaje: unPorcentaje

	fecha := unaFecha.
	porcentaje := unPorcentaje! !

!DescuentoPorFechaEspecial methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:49:58 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo saleEl: fecha! !

!DescuentoPorFechaEspecial class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:49:22 pm (UTC)'!
para: unaFecha porcentaje: unPorcentaje

	^self new initializePara: unaFecha porcentaje: unPorcentaje! !

!DescuentoPorTramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:50:34 pm (UTC)'!
initializeDesde: unOrigen hacia: unDestino porcentaje: unPorcentaje

	origen := unOrigen.
	destino := unDestino.
	porcentaje := unPorcentaje! !

!DescuentoPorTramo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:50:34 pm (UTC)'!
aplicaA: unVuelo

	^unVuelo vuelaDesde: origen hacia: destino! !

!DescuentoPorTramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:50:34 pm (UTC)'!
desde: unOrigen hacia: unDestino porcentaje: unPorcentaje

	^self new initializeDesde: unOrigen hacia: unDestino porcentaje: unPorcentaje! !

!DescuentoAplicado methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:51:52 pm (UTC)'!
initializeDe: unDescuento por: unMonto

	descuento := unDescuento.
	monto := unMonto! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:51:52 pm (UTC)'!
descuento

	^descuento! !

!DescuentoAplicado methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:51:52 pm (UTC)'!
monto

	^monto! !

!DescuentoAplicado methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 7:52:06 pm (UTC)'!
descontadoDe: unCosto

	^unCosto - monto! !

!DescuentoAplicado class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:51:52 pm (UTC)'!
de: unDescuento por: unMonto

	^self new initializeDe: unDescuento por: unMonto! !

!Tramo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:46:51 pm (UTC)'!
initializeDesde: unOrigen hacia: unDestino el: unaFecha

	origen := unOrigen.
	destino := unDestino.
	fecha := unaFecha! !

!Tramo methodsFor: 'vuelos' stamp: 'HAW 11/Sep/2026, 7:52:48 pm (UTC)'!
vuelosEntre: unasDefiniciones

	^(unasDefiniciones 
		select: [ :definicion | definicion vuelaDesde: origen hacia: destino el: fecha ]) 
			collect: [ :definicion | definicion vueloEl: fecha ]! !

!Tramo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:46:51 pm (UTC)'!
desde: unOrigen hacia: unDestino el: unaFecha

	^self new initializeDesde: unOrigen hacia: unDestino el: unaFecha! !

!Viaje methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:49:27 pm (UTC)'!
initializeVuelos: unosVuelos para: unaCantidadDePasajeros conDescuentos: unosDescuentos

	vuelos := unosVuelos.
	pasajeros := unaCantidadDePasajeros.
	descuentos := unosDescuentos! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
destino

	^vuelos last destino! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
llegada

	^vuelos last llegada! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
origen

	^vuelos first origen! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
salida

	^vuelos first salida! !

!Viaje methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
vuelos

	^vuelos copy! !

!Viaje methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 7:45:37 pm (UTC)'!
costoBruto

	^vuelos sum: [ :vuelo | vuelo costoPara: pasajeros ]! !

!Viaje methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 7:52:06 pm (UTC)'!
costoNeto

	^self descuentosAplicados 
		inject: self costoBruto 
		into: [ :costoConDescuentos :descuentoAplicado | descuentoAplicado descontadoDe: costoConDescuentos ]! !

!Viaje methodsFor: 'descuentos' stamp: 'HAW 11/Sep/2026, 7:51:45 pm (UTC)'!
descuentosAplicados

	| descuentosAplicados |
	
	descuentosAplicados := OrderedCollection new.
	vuelos do: [ :vuelo | descuentosAplicados addAll: (self descuentosAplicadosA: vuelo) ].
	
	^descuentosAplicados! !

!Viaje methodsFor: 'descuentos - private' stamp: 'HAW 11/Sep/2026, 7:51:45 pm (UTC)'!
descuentosAplicadosA: unVuelo

	^(self descuentosQueAplicanA: unVuelo) 
		collect: [ :descuento | descuento aplicadoSobre: (unVuelo costoPara: pasajeros) ]! !

!Viaje methodsFor: 'descuentos - private' stamp: 'HAW 11/Sep/2026, 7:49:58 pm (UTC)'!
descuentosQueAplicanA: unVuelo

	^descuentos select: [ :descuento | descuento aplicaA: unVuelo ]! !

!Viaje class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:52:48 pm (UTC)'!
vuelos: unosVuelos para: unaCantidadDePasajeros conDescuentos: unosDescuentos

	^self new 
		initializeVuelos: unosVuelos 
		para: unaCantidadDePasajeros 
		conDescuentos: unosDescuentos! !

!Viaje class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:47:46 pm (UTC)'!
puedeFormarseCon: unosVuelos

	^unosVuelos allButFirst 
		with: unosVuelos allButLast 
		allSatisfy: [ :vuelo :vueloAnterior | vuelo saleDespuesDe: vueloAnterior ]! !

!Vuelo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
initializeDe: unaDefinicion el: unaFecha

	definicion := unaDefinicion.
	fecha := unaFecha! !

!Vuelo methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
= unObjeto

	^self class = unObjeto class and: [ unObjeto esDe: definicion el: fecha ]! !

!Vuelo methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
hash

	^definicion hash bitXor: fecha hash! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
esDe: unaDefinicion el: unaFecha

	^definicion = unaDefinicion and: [ fecha = unaFecha ]! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:47:46 pm (UTC)'!
saleDespuesDe: unVuelo

	^self salida > unVuelo llegada! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:49:58 pm (UTC)'!
saleEl: unaFecha

	^fecha = unaFecha! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:44:27 pm (UTC)'!
tieneLugarPara: unaCantidadDePasajeros segun: unContadorDePasajeros

	^definicion 
		tieneLugarPara: unaCantidadDePasajeros 
		el: fecha 
		segun: unContadorDePasajeros! !

!Vuelo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 7:50:25 pm (UTC)'!
vuelaDesde: unOrigen hacia: unDestino

	^definicion vuelaDesde: unOrigen hacia: unDestino! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
destino

	^definicion destino! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
llegada

	^definicion llegadaEl: fecha! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
origen

	^definicion origen! !

!Vuelo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 7:44:58 pm (UTC)'!
salida

	^definicion salidaEl: fecha! !

!Vuelo methodsFor: 'costos' stamp: 'HAW 11/Sep/2026, 7:45:37 pm (UTC)'!
costoPara: unaCantidadDePasajeros

	^definicion costoPara: unaCantidadDePasajeros! !

!Vuelo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 7:42:18 pm (UTC)'!
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

!BuscadorTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 7:44:07 pm (UTC)'!
setUp

	ar100 := DefinicionDeVuelo 
		codigo: 'AR100' 
		desde: #Ezeiza 
		hacia: #Barcelona 
		losDias: (Monday to: Sunday) 
		aLas: (TimeOfDay hours: 22) 
		durante: 12 * hour 
		costando: 1000 * dollar.
	ar101 := DefinicionDeVuelo 
		codigo: 'AR101' 
		desde: #Barcelona 
		hacia: #Ezeiza 
		losDias: (Monday to: Sunday) 
		aLas: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar.
	ib300 := DefinicionDeVuelo 
		codigo: 'IB300' 
		desde: #Ezeiza 
		hacia: #Barcelona 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 1) 
		durante: 12 * hour 
		costando: 1000 * dollar.
	ib503 := DefinicionDeVuelo 
		codigo: 'IB503' 
		desde: #Madrid 
		hacia: #Paris 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 6) 
		durante: 90 * minute 
		costando: 300 * dollar.
	ib301 := DefinicionDeVuelo 
		codigo: 'IB301' 
		desde: #Barcelona 
		hacia: #Ezeiza 
		losDias: (Monday to: Friday) 
		aLas: (TimeOfDay hours: 14) 
		durante: 12 * hour 
		costando: 900 * dollar.
	asientosDisponibles := [ :unCodigo :unaFecha | 100 ]! !

!BuscadorTest methodsFor: 'tests - vuelos de ida' stamp: 'HAW 11/Sep/2026, 7:43:44 pm (UTC)'!
test01ViajesDeIdaConUnaDefinicionQueVuelaEseTramoEseDiaOfreceUnViajeConEseVuelo

	| viajes |
	
	viajes := (self buscadorCon: { ar100 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		para: 5.
	
	self assertViajes: viajes ofrecenLosVuelos: { { ar100 vueloEl: December ninth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - vuelos de ida' stamp: 'HAW 11/Sep/2026, 7:43:44 pm (UTC)'!
test02ViajesDeIdaNoOfreceDefinicionesQueVuelanOtroTramo

	| viajes |
	
	viajes := (self buscadorCon: { ar101. ar100. ib503 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		para: 5.
	
	self assertViajes: viajes ofrecenLosVuelos: { { ar100 vueloEl: December ninth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - vuelos de ida' stamp: 'HAW 11/Sep/2026, 7:43:13 pm (UTC)'!
test03ViajesDeIdaNoOfreceDefinicionesQueNoVuelanEseDiaDeLaSemana

	| viajes |
	
	viajes := (self buscadorCon: { ib300. ar100 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December thirteenth, 2025 
		para: 5.
	
	self assertViajes: viajes ofrecenLosVuelos: { { ar100 vueloEl: December thirteenth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - vuelos de ida' stamp: 'HAW 11/Sep/2026, 7:44:43 pm (UTC)'!
test05ViajeDeIdaMuestraOrigenDestinoSalidaYLlegadaDeSuVuelo

	| viaje |
	
	viaje := ((self buscadorCon: { ar100 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		para: 5) first.
	
	self assert: viaje origen equals: #Ezeiza.
	self assert: viaje destino equals: #Barcelona.
	self assert: viaje salida equals: (December ninth, 2025 atTimeOfDay: (TimeOfDay hours: 22)).
	self assert: viaje llegada equals: (December tenth, 2025 atTimeOfDay: (TimeOfDay hours: 10))! !

!BuscadorTest methodsFor: 'tests - vuelos de ida' stamp: 'HAW 11/Sep/2026, 7:45:09 pm (UTC)'!
test06ViajeDeIdaTieneComoCostoBrutoElCostoDeSuVueloPorLaCantidadDePasajeros

	| viaje |
	
	viaje := ((self buscadorCon: { ar100 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		para: 5) first.
	
	self assert: viaje costoBruto equals: 5000 * dollar! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:48:31 pm (UTC)'!
buscadorCon: unasDefiniciones

	^self buscadorCon: unasDefiniciones descuentos: #()! !

!BuscadorTest methodsFor: 'private' stamp: 'HAW 11/Sep/2026, 7:48:31 pm (UTC)'!
buscadorCon: unasDefiniciones descuentos: unosDescuentos

	^Buscador 
		definiciones: unasDefiniciones 
		descuentos: unosDescuentos 
		contadorDePasajeros: self! !

!BuscadorTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 7:43:13 pm (UTC)'!
assertViajes: unosViajes ofrecenLosVuelos: unosVuelosPorViaje

	self 
		assert: (unosViajes collect: [ :viaje | viaje vuelos asArray ]) asArray 
		equals: unosVuelosPorViaje! !

!BuscadorTest methodsFor: 'contador de pasajeros' stamp: 'HAW 11/Sep/2026, 7:44:07 pm (UTC)'!
asientosDisponiblesPara: unCodigo el: unaFecha

	^asientosDisponibles value: unCodigo value: unaFecha! !

!BuscadorTest methodsFor: 'tests - disponibilidad' stamp: 'HAW 11/Sep/2026, 7:44:07 pm (UTC)'!
test04ViajesNoOfrecenVuelosSinAsientosDisponiblesParaTodosLosPasajeros

	| viajes |
	
	asientosDisponibles := [ :unCodigo :unaFecha | 
		(unCodigo = 'AR100' and: [ unaFecha = (December ninth, 2025) ]) ifTrue: [ 4 ] ifFalse: [ 5 ] ].
	
	viajes := (self buscadorCon: { ar100. ib300 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		para: 5.
	
	self assertViajes: viajes ofrecenLosVuelos: { { ib300 vueloEl: December ninth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - vuelos de ida y vuelta' stamp: 'HAW 11/Sep/2026, 7:45:55 pm (UTC)'!
test07ViajesDeIdaYVueltaOfrecenViajesConElVueloDeIdaYElDeVuelta

	| viajes |
	
	viajes := (self buscadorCon: { ar100. ar101 }) 
		viajesDeIdaYVueltaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		volviendoEl: December fifteenth, 2025 
		para: 5.
	
	self 
		assertViajes: viajes 
		ofrecenLosVuelos: { { ar100 vueloEl: December ninth, 2025. ar101 vueloEl: December fifteenth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - vuelos multitramos' stamp: 'HAW 11/Sep/2026, 7:46:23 pm (UTC)'!
test08ViajesMultitramosOfrecenTodasLasCombinacionesDeVuelosDeCadaTramo

	| viajes |
	
	viajes := (self buscadorCon: { ar100. ib300. ib503. ar101. ib301 }) 
		viajesMultitramos: { 
			Tramo desde: #Ezeiza hacia: #Barcelona el: December ninth, 2025.
			Tramo desde: #Madrid hacia: #Paris el: December fifteenth, 2025.
			Tramo desde: #Barcelona hacia: #Ezeiza el: December nineteenth, 2025 }
		para: 1.
	
	self 
		assertViajes: viajes 
		ofrecenLosVuelos: { 
			{ ar100 vueloEl: December ninth, 2025. ib503 vueloEl: December fifteenth, 2025. ar101 vueloEl: December nineteenth, 2025 }.
			{ ar100 vueloEl: December ninth, 2025. ib503 vueloEl: December fifteenth, 2025. ib301 vueloEl: December nineteenth, 2025 }.
			{ ib300 vueloEl: December ninth, 2025. ib503 vueloEl: December fifteenth, 2025. ar101 vueloEl: December nineteenth, 2025 }.
			{ ib300 vueloEl: December ninth, 2025. ib503 vueloEl: December fifteenth, 2025. ib301 vueloEl: December nineteenth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - vuelos multitramos' stamp: 'HAW 11/Sep/2026, 7:47:25 pm (UTC)'!
test09ViajesMultitramosNoOfrecenCombinacionesConVuelosQueSalenAntesDeLaLlegadaDelTramoAnterior

	| viajes |
	
	viajes := (self buscadorCon: { ar100. ib300. ar101 }) 
		viajesMultitramos: { 
			Tramo desde: #Ezeiza hacia: #Barcelona el: December ninth, 2025.
			Tramo desde: #Barcelona hacia: #Ezeiza el: December ninth, 2025 }
		para: 1.
	
	self 
		assertViajes: viajes 
		ofrecenLosVuelos: { { ib300 vueloEl: December ninth, 2025. ar101 vueloEl: December ninth, 2025 } }! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:48:00 pm (UTC)'!
test10ViajeSinDescuentosTieneComoCostoNetoSuCostoBruto

	| viaje |
	
	viaje := ((self buscadorCon: { ar100 }) 
		viajesDeIdaDesde: #Ezeiza 
		hacia: #Barcelona 
		saliendoEl: December ninth, 2025 
		para: 5) first.
	
	self assert: viaje costoNeto equals: 5000 * dollar! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:48:31 pm (UTC)'!
test11ViajeEnFechaConDescuentoEspecialTieneComoCostoNetoElBrutoMenosSuPorcentaje

	| viaje |
	
	viaje := ((self 
		buscadorCon: { ar100 } 
		descuentos: { DescuentoPorFechaEspecial para: December twentyfifth, 2025 porcentaje: 10 }) 
			viajesDeIdaDesde: #Ezeiza 
			hacia: #Barcelona 
			saliendoEl: December twentyfifth, 2025 
			para: 1) first.
	
	self assert: viaje costoNeto equals: 900 * dollar! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:49:41 pm (UTC)'!
test12DescuentoPorFechaEspecialSoloSeAplicaAlVueloQueSaleEnEsaFecha

	| viaje |
	
	viaje := ((self 
		buscadorCon: { ar100. ar101 } 
		descuentos: { DescuentoPorFechaEspecial para: December twentyfifth, 2025 porcentaje: 10 }) 
			viajesDeIdaYVueltaDesde: #Ezeiza 
			hacia: #Barcelona 
			saliendoEl: December twentyfifth, 2025 
			volviendoEl: December twentyeighth, 2025 
			para: 1) first.
	
	self assert: viaje costoNeto equals: 1800 * dollar! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:50:09 pm (UTC)'!
test13DescuentoPorTramoSoloSeAplicaAlVueloDeEseOrigenYDestino

	| viaje |
	
	viaje := ((self 
		buscadorCon: { ar100. ar101 } 
		descuentos: { DescuentoPorTramo desde: #Ezeiza hacia: #Barcelona porcentaje: 20 }) 
			viajesDeIdaYVueltaDesde: #Ezeiza 
			hacia: #Barcelona 
			saliendoEl: December ninth, 2025 
			volviendoEl: December fifteenth, 2025 
			para: 1) first.
	
	self assert: viaje costoNeto equals: 1700 * dollar! !

!BuscadorTest methodsFor: 'tests - descuentos' stamp: 'HAW 11/Sep/2026, 7:51:24 pm (UTC)'!
test14ViajeMuestraLosDescuentosAplicadosConSuMontoSobreElCostoBruto

	| navidad ezeizaBarcelona viaje |
	
	navidad := DescuentoPorFechaEspecial para: December twentyfifth, 2025 porcentaje: 10.
	ezeizaBarcelona := DescuentoPorTramo desde: #Ezeiza hacia: #Barcelona porcentaje: 20.
	
	viaje := ((self 
		buscadorCon: { ar100 } 
		descuentos: { navidad. DescuentoPorTramo desde: #Madrid hacia: #Paris porcentaje: 30. ezeizaBarcelona }) 
			viajesDeIdaDesde: #Ezeiza 
			hacia: #Barcelona 
			saliendoEl: December twentyfifth, 2025 
			para: 1) first.
	
	self 
		assert: (viaje descuentosAplicados collect: [ :descuentoAplicado | descuentoAplicado descuento ]) asArray 
		equals: { navidad. ezeizaBarcelona }.
	self 
		assert: (viaje descuentosAplicados collect: [ :descuentoAplicado | descuentoAplicado monto ]) asArray 
		equals: { 100 * dollar. 200 * dollar }! !

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
