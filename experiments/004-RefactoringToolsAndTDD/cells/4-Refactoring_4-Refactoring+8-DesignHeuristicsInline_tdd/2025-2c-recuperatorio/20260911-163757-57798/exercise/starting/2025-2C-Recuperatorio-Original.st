!classDefinition: #TodasLasCombinacionesTest category: '2025-2C-Recuperatorio'!
TestCase subclass: #TodasLasCombinacionesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-Recuperatorio'!

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 12/9/2025 11:30:10'!
test01ParaUnaColecciónDeUnElemento

	self 
		assert: (OrderedCollection with: #(1)) todasLasCombinaciones 
		equals: (OrderedCollection with: (OrderedCollection with: 1))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 12/9/2025 11:30:14'!
test02ParaUnaColecciónDeMásDeUnElemento

	self 
		assert: (OrderedCollection with: #(1 2)) todasLasCombinaciones 
		equals: (OrderedCollection with: (OrderedCollection with: 1) with: (OrderedCollection with: 2))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 12/9/2025 11:30:28'!
test03ParaDosColeccionesDeDosYUnElemento

	self 
		assert: (OrderedCollection with: #(1 2) with: #(3)) todasLasCombinaciones 
		equals: (OrderedCollection 
			with: (OrderedCollection with: 1 with: 3) 
			with: (OrderedCollection with: 2 with: 3))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 12/9/2025 11:30:42'!
test04ParaDosColeccionesDeMásDeUnElemento

	self 
		assert: (OrderedCollection with: #(1 2) with: #(3 4)) todasLasCombinaciones 
		equals: (OrderedCollection 
			with: (OrderedCollection with: 1 with: 3) 
			with: (OrderedCollection with: 1 with: 4)
			with: (OrderedCollection with: 2 with: 3)
			with: (OrderedCollection with: 2 with: 4))! !

!TodasLasCombinacionesTest methodsFor: 'tests' stamp: 'HAW 12/9/2025 11:30:54'!
test05CuandoHayUnaColecciónVacía

	self assert: (OrderedCollection with: #(1 2) with: #() with: #(3 4)) todasLasCombinaciones isEmpty! !

!SequenceableCollection methodsFor: '*2025-2C-Recuperatorio' stamp: 'HAW 12/8/2025 21:28:39'!
todasLasCombinaciones

	| combinaciones |
	
	combinaciones := OrderedCollection new.
	self recolectar: OrderedCollection new en: combinaciones conTramosRestantesDe: self.
	
	^combinaciones! !

!SequenceableCollection methodsFor: '*2025-2C-Recuperatorio' stamp: 'HAW 12/8/2025 21:29:56'!
recolectar: tramos en: todosLosTramos conTramosRestantesDe: vuelosPorTramosRestantes 
	
	| vuelosPorTramo |
	
	vuelosPorTramosRestantes ifEmpty: [ ^todosLosTramos add: tramos. ].
	
	vuelosPorTramo := vuelosPorTramosRestantes first.
	vuelosPorTramo do: [ :vueloDeUnTramo | | nuevosTramos | 
			nuevosTramos := tramos copy.
			nuevosTramos add: vueloDeUnTramo.
			self recolectar: nuevosTramos en: todosLosTramos conTramosRestantesDe: vuelosPorTramosRestantes allButFirst ].
		
	! !



