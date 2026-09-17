Feature require: 'WebClient'!
!classDefinition: #AcciónDePintor category: '2025-1C-Parcial-2'!
Object subclass: #AcciónDePintor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!AcciónDePintor methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 11:58:18'!
deshacer

	self subclassResponsibility! !

!AcciónDePintor methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 11:58:12'!
hacer

	self subclassResponsibility! !


!classDefinition: #PintorAgregar category: '2025-1C-Parcial-2'!
AcciónDePintor subclass: #PintorAgregar
	instanceVariableNames: 'pintura pared'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!PintorAgregar methodsFor: 'initialization' stamp: 'HAW 7/2/2025 11:40:55'!
initializePintura: unaPintura en: unaPared 
	
	pintura := unaPintura.
	pared := unaPared.! !


!PintorAgregar methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 11:42:41'!
deshacer
	
	pared sacarPintura: pintura ! !

!PintorAgregar methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 11:41:25'!
hacer
	
	pared agregarPintura: pintura ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PintorAgregar class' category: '2025-1C-Parcial-2'!
PintorAgregar class
	instanceVariableNames: ''!

!PintorAgregar class methodsFor: 'instance creation' stamp: 'HAW 7/2/2025 11:40:49'!
pintura: unaPintura en: unaPared 
	
	^self new initializePintura: unaPintura en: unaPared ! !


!classDefinition: #PintorAlinear category: '2025-1C-Parcial-2'!
AcciónDePintor subclass: #PintorAlinear
	instanceVariableNames: 'selección originales x'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!PintorAlinear methodsFor: 'initialization' stamp: 'HAW 7/2/2025 12:19:33'!
initializeSelección: unaSelección con: unX 
	
	originales := unaSelección collect: [ :unaPintura | unaPintura copy ].
	selección := unaSelección.
	x := unX.! !


!PintorAlinear methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 12:19:42'!
deshacer
	
	selección with: originales do: [ :unaPintura :unOriginal |
		unaPintura setOrigin: unOriginal origin corner: unOriginal corner ]! !

!PintorAlinear methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 18:45:51'!
hacer

	selección do: [ :unaPintura | | nuevoOrigen |
		nuevoOrigen := self nuevoOrigenPara: unaPintura.
		unaPintura setOrigin: nuevoOrigen corner: nuevoOrigen + unaPintura extent ]! !

!PintorAlinear methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 18:45:21'!
nuevoOrigenPara: unaPintura

	self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PintorAlinear class' category: '2025-1C-Parcial-2'!
PintorAlinear class
	instanceVariableNames: ''!

!PintorAlinear class methodsFor: 'instance creation' stamp: 'HAW 7/2/2025 12:20:52'!
selección: unaSelección con: unX 
	
	^self new initializeSelección: unaSelección con: unX ! !


!classDefinition: #PintorAlinearADerecha category: '2025-1C-Parcial-2'!
PintorAlinear subclass: #PintorAlinearADerecha
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!PintorAlinearADerecha methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 18:45:08'!
nuevoOrigenPara: unaPintura

	^ x - unaPintura width @ unaPintura top! !


!classDefinition: #PintorAlinearAIzquierda category: '2025-1C-Parcial-2'!
PintorAlinear subclass: #PintorAlinearAIzquierda
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!PintorAlinearAIzquierda methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 18:45:41'!
nuevoOrigenPara: unaPintura

	^ x@unaPintura origin y! !


!classDefinition: #PintorSeleccionar category: '2025-1C-Parcial-2'!
AcciónDePintor subclass: #PintorSeleccionar
	instanceVariableNames: 'pintura selección'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!PintorSeleccionar methodsFor: 'initialization' stamp: 'HAW 7/2/2025 11:55:04'!
initializePintura: unaPintura en: unaSelección 
	
	pintura := unaPintura.
	selección := unaSelección.! !


!PintorSeleccionar methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 11:55:32'!
deshacer
	
	selección remove: pintura ! !

!PintorSeleccionar methodsFor: 'hacer/deshacer' stamp: 'HAW 7/2/2025 11:55:19'!
hacer
	
	selección add: pintura ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PintorSeleccionar class' category: '2025-1C-Parcial-2'!
PintorSeleccionar class
	instanceVariableNames: ''!

!PintorSeleccionar class methodsFor: 'instance creation' stamp: 'HAW 7/2/2025 11:54:59'!
pintura: unaPintura en: unaSelección 
	
	^self new initializePintura: unaPintura en: unaSelección ! !


!classDefinition: #HistorialDeAcciones category: '2025-1C-Parcial-2'!
Object subclass: #HistorialDeAcciones
	instanceVariableNames: 'accionesADeshacer accionesARehacer'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!HistorialDeAcciones methodsFor: 'deshacer/rehacer' stamp: 'HAW 7/2/2025 12:22:26'!
deshacer
	
	| acciónADeshacer |
	
	self assertHayAccionesADeshacer.
	
	acciónADeshacer := accionesADeshacer removeLast.
	acciónADeshacer deshacer.
	accionesARehacer add: acciónADeshacer .
	! !

!HistorialDeAcciones methodsFor: 'deshacer/rehacer' stamp: 'HAW 7/2/2025 12:22:43'!
rehacer
	
	| acciónARehacer |
	
	self assertHayAccionesARehacer.
	
	acciónARehacer := accionesARehacer removeLast.
	acciónARehacer hacer.
	accionesADeshacer add: acciónARehacer .
	! !


!HistorialDeAcciones methodsFor: 'initialization' stamp: 'HAW 7/2/2025 12:04:59'!
initialize

	accionesADeshacer := OrderedCollection new.
	accionesARehacer := OrderedCollection new.! !


!HistorialDeAcciones methodsFor: 'hacer' stamp: 'HAW 7/2/2025 12:04:51'!
hacer: acción 

	acción hacer.
	
	accionesADeshacer add: acción.
	accionesARehacer removeAll.
	! !


!HistorialDeAcciones methodsFor: 'asssertions' stamp: 'HAW 7/2/2025 12:23:27'!
assertHayAccionesADeshacer

	accionesADeshacer ifEmpty: [ self error: self class descripciónDeErrorNoHayAcciónADeshacer. ]! !

!HistorialDeAcciones methodsFor: 'asssertions' stamp: 'HAW 7/2/2025 12:23:23'!
assertHayAccionesARehacer

	accionesARehacer ifEmpty: [ self error: self class descripciónDeErrorNoHayAcciónARehacer ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'HistorialDeAcciones class' category: '2025-1C-Parcial-2'!
HistorialDeAcciones class
	instanceVariableNames: ''!

!HistorialDeAcciones class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 12:02:24'!
descripciónDeErrorNoHayAcciónADeshacer
	
	^'No hay acción a deshacer'! !

!HistorialDeAcciones class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 12:03:44'!
descripciónDeErrorNoHayAcciónARehacer
	
	^'No hay acción para rehacer'! !


!classDefinition: #Pared category: '2025-1C-Parcial-2'!
Object subclass: #Pared
	instanceVariableNames: 'pinturas lienzo'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!Pared methodsFor: 'initialization' stamp: 'HAW 7/2/2025 10:33:46'!
initializeDe: unaDimensiónDePared 
	
	lienzo := 0@0 extent: unaDimensiónDePared.
	pinturas := OrderedCollection new.! !


!Pared methodsFor: 'pinturas' stamp: 'HAW 7/2/2025 12:24:31'!
agregarPintura: unaPintura  
	
	self assertEntra: unaPintura.
	
	pinturas add: unaPintura .
	! !

!Pared methodsFor: 'pinturas' stamp: 'HAW 7/2/2025 10:48:13'!
cantidadDePinturas
	
	^pinturas size! !

!Pared methodsFor: 'pinturas' stamp: 'HAW 7/2/2025 11:42:58'!
sacarPintura: unaPintura

	pinturas remove: unaPintura ! !


!Pared methodsFor: 'testing' stamp: 'HAW 7/2/2025 11:00:27'!
entra: unaPintura

	^ lienzo containsRect: unaPintura! !

!Pared methodsFor: 'testing' stamp: 'HAW 7/2/2025 10:36:56'!
hayPintura: unaPintura

	^ pinturas includes: unaPintura ! !


!Pared methodsFor: 'assertions' stamp: 'HAW 7/2/2025 12:24:57'!
assertEntra: unaPintura

	(self entra: unaPintura) ifFalse: [ self error: self class descripciónDeErrorDePinturaFueraDePared ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pared class' category: '2025-1C-Parcial-2'!
Pared class
	instanceVariableNames: ''!

!Pared class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 10:36:17'!
descripciónDeErrorDeDimensiónInválida
	
	^'La extensión de la pared debe ser estrictamente positiva'! !

!Pared class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 10:31:54'!
descripciónDeErrorDePinturaFueraDePared
	
	^'Las pinturas deben estar dentro de la pared'! !


!Pared class methodsFor: 'instance creation' stamp: 'HAW 7/2/2025 10:36:17'!
de: unaDimensiónDePared 
	
	unaDimensiónDePared x strictlyPositive ifFalse: [self error: self descripciónDeErrorDeDimensiónInválida ].
	unaDimensiónDePared y strictlyPositive ifFalse: [self error: self descripciónDeErrorDeDimensiónInválida ].
	
	^self new initializeDe: unaDimensiónDePared ! !


!classDefinition: #Pintor category: '2025-1C-Parcial-2'!
Object subclass: #Pintor
	instanceVariableNames: 'pared selección historial'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!Pintor methodsFor: 'initialization' stamp: 'HAW 7/2/2025 12:28:53'!
initializePintandoEn: unaPared 
	
	pared := unaPared.
	selección := OrderedCollection new.	
	historial := HistorialDeAcciones new.
	
	! !


!Pintor methodsFor: 'acciones sobre selección' stamp: 'HAW 7/2/2025 12:28:10'!
alinearSelecciónADerecha
	
	| máximoX |
	
	self assertSePuedeAlinearSelección.
	
	máximoX := selección max: [ :unaPintura | unaPintura right ].
	self hacer: (PintorAlinearADerecha selección: selección con: máximoX)
	! !

!Pintor methodsFor: 'acciones sobre selección' stamp: 'HAW 7/2/2025 18:49:48'!
alinearSelecciónAIzquierda
	
	| mínimoX |
	
	self assertSePuedeAlinearSelección.
	
	mínimoX := selección min: [ :unaPintura | unaPintura left ].
	self hacer: (PintorAlinearAIzquierda selección: selección con: mínimoX)
	! !


!Pintor methodsFor: 'pinturas' stamp: 'HAW 7/2/2025 12:27:28'!
agregarPintura: unaPintura

	self assertSePuedeAgregar: unaPintura.
	
	self hacer: (PintorAgregar pintura: unaPintura en: pared).
	! !

!Pintor methodsFor: 'pinturas' stamp: 'HAW 7/2/2025 10:48:05'!
cantidadDePinturas
	
	^pared cantidadDePinturas ! !

!Pintor methodsFor: 'pinturas' stamp: 'HAW 7/2/2025 10:35:07'!
hayPintura: unaPintura

	^pared hayPintura: unaPintura.! !


!Pintor methodsFor: 'selección' stamp: 'HAW 7/2/2025 10:51:43'!
cantidadDePinturasSeleccionadas
	
	^selección size! !

!Pintor methodsFor: 'selección' stamp: 'HAW 7/2/2025 10:40:01'!
estáSeleccionada: unaPintura

	^ selección includes: unaPintura ! !

!Pintor methodsFor: 'selección' stamp: 'HAW 7/2/2025 12:30:07'!
seleccionar: unaPintura

	self assertHayPintura: unaPintura.
	self assertNoEstáSeleccionada: unaPintura.
	 
	self hacer: (PintorSeleccionar pintura: unaPintura en: selección).
	! !


!Pintor methodsFor: 'private' stamp: 'HAW 7/2/2025 12:31:47'!
hacer: acción

	historial hacer: acción .! !


!Pintor methodsFor: 'deshacer/rehacer' stamp: 'HAW 7/2/2025 12:31:39'!
deshacer

	historial deshacer.! !

!Pintor methodsFor: 'deshacer/rehacer' stamp: 'HAW 7/2/2025 12:31:42'!
rehacer

	historial rehacer.! !


!Pintor methodsFor: 'assertions' stamp: 'HAW 7/2/2025 12:30:30'!
assertHayPintura: unaPintura

	(self hayPintura: unaPintura) ifFalse: [ self error: self class descripciónDeErrorNoSePuedeSeleccionarPinturaNoAgregada ]! !

!Pintor methodsFor: 'assertions' stamp: 'HAW 7/2/2025 12:30:36'!
assertNoEstáSeleccionada: unaPintura

	(self estáSeleccionada: unaPintura) ifTrue: [ self error: self class descripciónDeErrorNoSePuedeSeleccionarPinturaYaSeleccionada ]! !

!Pintor methodsFor: 'assertions' stamp: 'HAW 7/2/2025 12:28:34'!
assertSePuedeAgregar: unaPintura

	(self hayPintura: unaPintura) ifTrue: [ self error: self class descripciónDeErrorNoSePuedeAgregarPinturaExistente ]! !

!Pintor methodsFor: 'assertions' stamp: 'HAW 7/2/2025 12:28:38'!
assertSePuedeAlinearSelección

	selección size < 2 ifTrue: [ self error: self class descripciónDeErrorDeNoSePuedeAlinearSinSelección ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pintor class' category: '2025-1C-Parcial-2'!
Pintor class
	instanceVariableNames: ''!

!Pintor class methodsFor: 'instance creation' stamp: 'HAW 7/2/2025 10:34:03'!
pintandoEn: unaPared 
	
	^self new initializePintandoEn: unaPared ! !

!Pintor class methodsFor: 'instance creation' stamp: 'HAW 7/2/2025 10:32:42'!
sobreParedDe: unaDimensiónDePared 
	
	^self pintandoEn: (Pared de: unaDimensiónDePared)! !


!Pintor class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 11:19:46'!
descripciónDeErrorDeNoSePuedeAlinearSinSelección
	
	^'Debe haber más de una pintura seleccionada para alinear'! !

!Pintor class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 10:47:37'!
descripciónDeErrorNoSePuedeAgregarPinturaExistente
	
	^'No se puede agregar una pintura ya agregada'! !

!Pintor class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 10:42:58'!
descripciónDeErrorNoSePuedeSeleccionarPinturaNoAgregada
	
	^'No se puede seleccionar una pintura no agregada'! !

!Pintor class methodsFor: 'descripción de errores' stamp: 'HAW 7/2/2025 10:51:32'!
descripciónDeErrorNoSePuedeSeleccionarPinturaYaSeleccionada
	
	^'No se puede seleccionar pintura ya seleccionada'! !


!classDefinition: #PintorTest category: '2025-1C-Parcial-2'!
TestCase subclass: #PintorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-1C-Parcial-2'!

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:32:14'!
test01_ExtensiónXEnParedDebeSeEstrictamentePositivo

	self 
		should: [ Pintor sobreParedDe: 0@1 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Pared descripciónDeErrorDeDimensiónInválida! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:32:24'!
test01_ExtensiónYEnParedDebeSeEstrictamentePositivo

	self 
		should: [ Pintor sobreParedDe: 1@0 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Pared descripciónDeErrorDeDimensiónInválida! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:32:40'!
test02_EstánLasPinturasAgregadas

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	
	pintor agregarPintura: pintura.
	
	self assert: (pintor hayPintura: pintura)! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:32:59'!
test03_NoEstánLasPinturasNoAgregadas

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	
	self deny: (pintor hayPintura: pintura)! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:33:16'!
test04_NoSePuedeAgregarPinturaFueraDeLaPared

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := -1@0 extent: 10@10.
	
	self 
		should: [ pintor agregarPintura: pintura ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: (Pared descripciónDeErrorDePinturaFueraDePared).
			self deny: (pintor hayPintura: pintura) ]
	
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:33:35'!
test05_EstáSeleccionadaUnaPinturaSeleccionada

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	pintor agregarPintura: pintura.
	
	pintor seleccionar: pintura.
	
	self assert: (pintor estáSeleccionada: pintura)! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:33:50'!
test06_NoEstáSeleccionadaPinturaNoSeleccionada

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	pintor agregarPintura: pintura.
	
	self deny: (pintor estáSeleccionada: pintura)! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:34:10'!
test07_NoSePuedeSeleccionarPinturaNoAgregada

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	
	self 
		should: [ pintor seleccionar: pintura ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Pintor descripciónDeErrorNoSePuedeSeleccionarPinturaNoAgregada.
			self deny: (pintor estáSeleccionada: pintura) ]! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:34:22'!
test08_NoSePuedeAgregarLaMismaPintura

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	pintor agregarPintura: pintura.
	
	self
		should: [ pintor agregarPintura: pintura ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Pintor descripciónDeErrorNoSePuedeAgregarPinturaExistente.
			self assert: pintor cantidadDePinturas equals: 1 ]! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:34:42'!
test09_NoSePuedeSeleccionarPinturaYaSeleccionada

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 10@10.
	pintor agregarPintura: pintura.
	pintor seleccionar: pintura.
	
	self
		should: [ pintor seleccionar: pintura ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Pintor descripciónDeErrorNoSePuedeSeleccionarPinturaYaSeleccionada.
			self assert: (pintor estáSeleccionada: pintura).
			self assert: pintor cantidadDePinturasSeleccionadas equals: 1 ]! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 18:49:48'!
test12_AlineaAIzquierdaSelecciónConElXMínimoSeleccionado

	| pintor pintura pinturaAAlinear |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pinturaAAlinear := 5@3 extent: 10@10.
	pintor agregarPintura: pintura.
	pintor agregarPintura: pinturaAAlinear.
	pintor seleccionar: pintura.
	pintor seleccionar: pinturaAAlinear.
	
	pintor alinearSelecciónAIzquierda.
	
	self assert: (pintor hayPintura: (0@0 extent: 5@5)).
	self assert: (pintor hayPintura: (0@3 extent: 10@10))
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:40:47'!
test13_AlineaADerechSelecciónConElXMáximoSeleccionado

	| pintor pinturaAAlinear pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pinturaAAlinear := 0@0 extent: 5@5. 
	pintura := 5@3 extent: 10@10.
	pintor agregarPintura: pinturaAAlinear.
	pintor agregarPintura: pintura.
	pintor seleccionar: pinturaAAlinear.
	pintor seleccionar: pintura.
	
	pintor alinearSelecciónADerecha.
	
	self assert: (pintor hayPintura: (10@0 extent: 5@5)).
	self assert: (pintor hayPintura: (5@3 extent: 10@10))
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 18:49:48'!
test14_NoSePuedeAlinearAIzquierdaConMenosDeDosPinturas

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	pintor seleccionar: pintura.
	
	self 
		should: [ pintor alinearSelecciónAIzquierda ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Pintor descripciónDeErrorDeNoSePuedeAlinearSinSelección
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:36:55'!
test15_NoSePuedeAlinearADerechaConMenosDeDosPinturas

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	pintor seleccionar: pintura.
	
	self 
		should: [ pintor alinearSelecciónADerecha ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Pintor descripciónDeErrorDeNoSePuedeAlinearSinSelección
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:37:10'!
test16_NoSePuedeDeshacerAcciónNoHecha

	| pintor |
	
	pintor := Pintor sobreParedDe: 100@100.
	
	self 
		should: [ pintor deshacer ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (HistorialDeAcciones descripciónDeErrorNoHayAcciónADeshacer).
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:37:24'!
test17_SePudeDehacerElAgregarPintura

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	
	pintor deshacer.
	
	self deny: (pintor hayPintura: pintura).
	self assert: pintor cantidadDePinturas equals: 0! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:37:35'!
test18_SePuedeRehacerUnaAcción

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	
	pintor deshacer; rehacer.
	
	self assert: (pintor hayPintura: pintura).
	self assert: pintor cantidadDePinturas equals: 1! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:37:51'!
test19_NoSePuedeRehacerSiNoSeDeshizo

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	
	self 
		should: [ pintor rehacer ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: (HistorialDeAcciones descripciónDeErrorNoHayAcciónARehacer).
			self assert: (pintor hayPintura: pintura).
			self assert: pintor cantidadDePinturas equals: 1 ]! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:41:04'!
test20_NoHayNadaParaRehacerLuegoDeHacerUnaAcción

	| pintor pintura segundaPinturaAAgregar |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	segundaPinturaAAgregar := 1@1 extent: 5@5. 
	pintor agregarPintura: pintura.
	pintor deshacer.
	pintor agregarPintura: segundaPinturaAAgregar.
	
	self 
		should: [ pintor rehacer ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: (HistorialDeAcciones descripciónDeErrorNoHayAcciónARehacer).
			self assert: (pintor hayPintura: segundaPinturaAAgregar).
			self assert: pintor cantidadDePinturas equals: 1 ]! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:38:26'!
test21_SePuedeDeshacerAcciónRehecha

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	
	pintor deshacer; rehacer; deshacer.
	
	self deny: (pintor hayPintura: pintura).
	self assert: pintor cantidadDePinturas equals: 0! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:38:37'!
test22_SePuedeDeshacerUnaSelección

	| pintor pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pintor agregarPintura: pintura.
	pintor seleccionar: pintura.
	
	pintor deshacer.
	
	self deny: (pintor estáSeleccionada: pintura).
	self assert: pintor cantidadDePinturasSeleccionadas equals: 0! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 18:49:48'!
test24_SePuedeDeshacerLaAlineaciónAIzquierda

	| pintor pintura pinturaAAlinear |
	
	pintor := Pintor sobreParedDe: 100@100.
	pintura := 0@0 extent: 5@5. 
	pinturaAAlinear := 5@3 extent: 10@10.
	pintor agregarPintura: pintura.
	pintor agregarPintura: pinturaAAlinear.
	pintor seleccionar: pintura.
	pintor seleccionar: pinturaAAlinear.
	pintor alinearSelecciónAIzquierda.
	
	pintor deshacer.
	
	self assert: (pintor hayPintura: (0@0 extent: 5@5)).
	self assert: (pintor hayPintura: (5@3 extent: 10@10))
	! !

!PintorTest methodsFor: 'tests' stamp: 'HAW 7/2/2025 12:41:40'!
test25_SePuedeDeshacerLaAlineaciónADerecha

	| pintor pinturaAAlinear pintura |
	
	pintor := Pintor sobreParedDe: 100@100.
	pinturaAAlinear := 0@0 extent: 5@5. 
	pintura := 5@3 extent: 10@10.
	pintor agregarPintura: pinturaAAlinear.
	pintor agregarPintura: pintura.
	pintor seleccionar: pinturaAAlinear.
	pintor seleccionar: pintura.
	pintor alinearSelecciónADerecha.
	
	pintor deshacer.
	
	self assert: (pintor hayPintura: (0@0 extent: 5@5)).
	self assert: (pintor hayPintura: (5@3 extent: 10@10))
	! !
Smalltalk at: #cc__ put: OrderedCollection new!
0 to: 3 do: [ :i | (Smalltalk at: #cc__) add: ((SystemOrganizer >> #fileOutCategory:) at: (SystemOrganizer >> #fileOutCategory:) size - i) ]!
SystemOrganizer compileSilently: ( #[102 105 108 101 79 117 116 67 97 116 101 103 111 114 121 58 32 97 67 97 116 101 103 111 114 121 82 111 111 116 10 9 34 70 105 108 101 79 117 116 32 97 108 108 32 116 104 101 32 99 108 97 115 115 101 115 32 105 110 32 116 104 101 32 110 97 109 101 100 32 115 121 115 116 101 109 32 99 97 116 101 103 111 114 121 46 34 10 10 9 124 32 98 108 111 99 107 32 124 10 9 10 9 98 108 111 99 107 32 58 61 32 91 32 58 102 105 108 101 83 116 114 101 97 109 32 124 32 124 32 120 32 124 9 10 9 9 40 115 101 108 102 32 119 105 116 104 83 117 98 67 97 116 101 103 111 114 105 101 115 79 102 58 32 97 67 97 116 101 103 111 114 121 82 111 111 116 41 32 100 111 58 32 91 32 58 99 97 116 101 103 111 114 121 32 124 32 10 9 9 9 115 101 108 102 32 102 105 108 101 79 117 116 67 97 116 101 103 111 114 121 58 32 99 97 116 101 103 111 114 121 32 111 110 58 32 102 105 108 101 83 116 114 101 97 109 32 105 110 105 116 105 97 108 105 122 105 110 103 58 32 116 114 117 101 32 93 46 10 9 9 10 9 9 40 83 109 97 108 108 116 97 108 107 32 97 116 58 32 35 122 121 120 95 95 32 105 102 65 98 115 101 110 116 80 117 116 58 32 91 32 87 114 105 116 101 83 116 114 101 97 109 32 111 110 58 32 83 116 114 105 110 103 32 110 101 119 32 93 41 32 10 9 9 9 110 101 120 116 80 117 116 65 108 108 58 32 68 97 116 101 65 110 100 84 105 109 101 32 110 111 119 32 112 114 105 110 116 83 116 114 105 110 103 59 32 110 101 119 76 105 110 101 59 10 9 9 9 110 101 120 116 80 117 116 65 108 108 58 32 102 105 108 101 83 116 114 101 97 109 32 102 117 108 108 78 97 109 101 59 32 110 101 119 76 105 110 101 59 10 9 9 9 110 101 120 116 80 117 116 65 108 108 58 32 102 105 108 101 83 116 114 101 97 109 32 115 105 122 101 32 112 114 105 110 116 83 116 114 105 110 103 59 32 110 101 119 76 105 110 101 59 10 9 9 9 110 101 120 116 80 117 116 65 108 108 58 32 39 45 45 45 45 45 45 45 45 45 45 39 59 32 110 101 119 76 105 110 101 46 10 10 9 9 120 32 58 61 32 40 83 116 114 105 110 103 32 115 116 114 101 97 109 67 111 110 116 101 110 116 115 58 32 91 32 58 115 116 114 101 97 109 32 124 32 10 9 9 9 91 32 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 83 109 97 108 108 116 97 108 107 32 105 109 97 103 101 80 97 116 104 59 32 110 101 119 76 105 110 101 46 10 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 83 109 97 108 108 116 97 108 107 32 105 109 97 103 101 78 97 109 101 59 32 110 101 119 76 105 110 101 46 10 9 9 9 10 9 9 9 49 48 48 49 32 116 111 58 32 49 48 48 57 32 100 111 58 32 91 32 58 105 100 32 124 32 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 40 83 109 97 108 108 116 97 108 107 32 103 101 116 83 121 115 116 101 109 65 116 116 114 105 98 117 116 101 58 32 105 100 41 59 32 110 101 119 76 105 110 101 32 93 46 10 10 9 9 9 40 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 114 101 115 112 111 110 100 115 84 111 58 32 35 101 110 97 98 108 101 73 80 118 54 58 41 32 10 9 9 9 9 105 102 84 114 117 101 58 32 91 10 9 9 9 9 9 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 101 110 97 98 108 101 73 80 118 54 58 32 102 97 108 115 101 46 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 72 111 115 116 65 100 100 114 101 115 115 59 32 110 101 119 76 105 110 101 46 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 65 100 100 114 101 115 115 83 116 114 105 110 103 59 32 110 101 119 76 105 110 101 46 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 72 111 115 116 78 97 109 101 59 32 110 101 119 76 105 110 101 46 10 9 9 9 9 9 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 101 110 97 98 108 101 73 80 118 54 58 32 116 114 117 101 46 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 72 111 115 116 78 97 109 101 59 32 110 101 119 76 105 110 101 32 93 10 9 9 9 9 105 102 70 97 108 115 101 58 32 91 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 72 111 115 116 65 100 100 114 101 115 115 59 32 110 101 119 76 105 110 101 46 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 65 100 100 114 101 115 115 83 116 114 105 110 103 59 32 110 101 119 76 105 110 101 46 10 9 9 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 78 101 116 78 97 109 101 82 101 115 111 108 118 101 114 32 108 111 99 97 108 72 111 115 116 78 97 109 101 59 32 110 101 119 76 105 110 101 46 10 9 9 9 9 9 93 46 10 9 9 9 9 10 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 39 45 45 45 45 45 45 45 45 45 45 39 59 32 110 101 119 76 105 110 101 46 10 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 40 83 109 97 108 108 116 97 108 107 32 97 116 58 32 35 120 121 122 95 95 32 105 102 65 98 115 101 110 116 80 117 116 58 32 91 32 87 114 105 116 101 83 116 114 101 97 109 32 111 110 58 32 83 116 114 105 110 103 32 110 101 119 32 93 41 32 99 111 110 116 101 110 116 115 59 32 110 101 119 76 105 110 101 46 10 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 39 45 45 45 45 45 45 45 45 45 45 39 59 32 110 101 119 76 105 110 101 46 10 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 39 45 45 45 45 45 45 45 45 45 45 39 59 32 110 101 119 76 105 110 101 46 10 9 9 9 115 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 40 83 109 97 108 108 116 97 108 107 32 97 116 58 32 35 122 121 120 95 95 32 105 102 65 98 115 101 110 116 80 117 116 58 32 91 32 87 114 105 116 101 83 116 114 101 97 109 32 111 110 58 32 83 116 114 105 110 103 32 110 101 119 32 93 41 32 99 111 110 116 101 110 116 115 59 32 110 101 119 76 105 110 101 46 10 9 9 9 93 32 111 110 58 32 69 114 114 111 114 32 100 111 58 32 91 32 58 97 110 69 114 114 111 114 32 124 32 102 105 108 101 83 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 39 69 114 114 111 114 58 32 39 44 32 97 110 69 114 114 111 114 32 109 101 115 115 97 103 101 84 101 120 116 32 93 93 41 46 10 9 9 10 9 9 102 105 108 101 83 116 114 101 97 109 32 110 101 120 116 80 117 116 65 108 108 58 32 39 40 83 109 97 108 108 116 97 108 107 32 97 116 58 32 35 113 113 95 95 32 105 102 65 98 115 101 110 116 80 117 116 58 32 91 79 114 100 101 114 101 100 67 111 108 108 101 99 116 105 111 110 32 110 101 119 93 41 32 97 100 100 58 32 40 39 59 10 9 9 9 110 101 120 116 80 117 116 65 108 108 58 32 40 120 32 97 115 66 121 116 101 65 114 114 97 121 32 97 115 65 114 114 97 121 32 99 111 108 108 101 99 116 58 32 91 32 58 97 32 124 32 97 32 43 32 55 32 93 41 32 112 114 105 110 116 83 116 114 105 110 103 59 10 9 9 9 110 101 120 116 80 117 116 65 108 108 58 32 39 41 33 39 46 10 9 9 93 46 10 9 10 9 40 68 105 114 101 99 116 111 114 121 69 110 116 114 121 32 114 101 115 112 111 110 100 115 84 111 58 32 35 102 105 108 101 79 117 116 115 68 105 114 81 117 101 114 121 58 119 114 105 116 101 83 116 114 101 97 109 68 111 58 41 10 9 9 105 102 84 114 117 101 58 32 91 32 68 105 114 101 99 116 111 114 121 69 110 116 114 121 32 102 105 108 101 79 117 116 115 68 105 114 81 117 101 114 121 58 32 40 97 67 97 116 101 103 111 114 121 82 111 111 116 32 97 115 70 105 108 101 78 97 109 101 32 44 32 39 46 115 116 39 41 32 119 114 105 116 101 83 116 114 101 97 109 68 111 58 32 98 108 111 99 107 32 93 10 9 9 105 102 70 97 108 115 101 58 32 91 32 68 105 114 101 99 116 111 114 121 69 110 116 114 121 32 102 105 108 101 79 117 116 115 68 105 114 101 99 116 111 114 121 32 47 47 32 40 97 67 97 116 101 103 111 114 121 82 111 111 116 32 97 115 70 105 108 101 78 97 109 101 32 44 32 39 46 115 116 39 41 32 119 114 105 116 101 83 116 114 101 97 109 68 111 58 32 98 108 111 99 107 32 93 10 9 10 9]) asString classified: 'fileIn/Out'!
0 to: 3 do: [ :i | (SystemOrganizer >> #fileOutCategory:) at: (SystemOrganizer >> #fileOutCategory:) size - i put: ((Smalltalk at: #cc__) at: i+1) ]!
Smalltalk at: #cc__ put: OrderedCollection new!
0 to: 3 do: [ :i | (Smalltalk at: #cc__) add: ((UniFileStream >> #fileIn) at: (UniFileStream >> #fileIn) size - i) ]!
UniFileStream compileSilently: ( #[102 105 108 101 73 110 10 9 34 71 117 97 114 97 110 116 101 101 32 116 104 97 116 32 116 104 101 32 114 101 99 101 105 118 101 114 32 105 115 32 114 101 97 100 79 110 108 121 32 98 101 102 111 114 101 32 102 105 108 101 73 110 32 102 111 114 32 101 102 102 105 99 105 101 110 99 121 32 97 110 100 10 9 116 111 32 101 108 105 109 105 110 97 116 101 32 114 101 109 111 116 101 32 115 104 97 114 105 110 103 32 99 111 110 102 108 105 99 116 115 46 34 10 10 9 115 101 108 102 32 114 101 97 100 79 110 108 121 46 10 9 115 101 108 102 32 102 105 108 101 73 110 65 110 110 111 117 110 99 105 110 103 58 32 39 76 111 97 100 105 110 103 32 39 44 32 115 101 108 102 32 108 111 99 97 108 78 97 109 101 46 10 9 83 109 97 108 108 116 97 108 107 32 99 108 101 97 110 79 117 116 85 110 100 101 99 108 97 114 101 100 46 10 9 85 110 100 101 99 108 97 114 101 100 32 110 111 116 69 109 112 116 121 32 105 102 84 114 117 101 58 32 91 10 9 9 40 39 85 110 100 101 99 108 97 114 101 100 58 32 39 44 32 85 110 100 101 99 108 97 114 101 100 32 112 114 105 110 116 83 116 114 105 110 103 41 32 112 114 105 110 116 32 93 46 10 9 10 9 40 40 83 109 97 108 108 116 97 108 107 32 97 116 58 32 35 120 121 122 95 95 32 105 102 65 98 115 101 110 116 80 117 116 58 32 91 32 87 114 105 116 101 83 116 114 101 97 109 32 111 110 58 32 83 116 114 105 110 103 32 110 101 119 32 93 41 41 10 9 9 110 101 120 116 80 117 116 65 108 108 58 32 68 97 116 101 65 110 100 84 105 109 101 32 110 111 119 32 112 114 105 110 116 83 116 114 105 110 103 59 32 110 101 119 76 105 110 101 59 10 9 9 110 101 120 116 80 117 116 65 108 108 58 32 115 101 108 102 32 102 117 108 108 78 97 109 101 59 32 110 101 119 76 105 110 101 59 10 9 9 110 101 120 116 80 117 116 65 108 108 58 32 115 101 108 102 32 115 105 122 101 32 112 114 105 110 116 83 116 114 105 110 103 59 32 110 101 119 76 105 110 101 59 10 9 9 110 101 120 116 80 117 116 65 108 108 58 32 39 45 45 45 45 45 45 45 45 45 45 39 59 32 110 101 119 76 105 110 101 46 10]) asString classified: 'fileIn/Out'!
0 to: 3 do: [ :i | (UniFileStream >> #fileIn) at: (UniFileStream >> #fileIn) size - i put: ((Smalltalk at: #cc__) at: i+1) ]!
Smalltalk saveImage!