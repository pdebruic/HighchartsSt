Class {
	#name : #HighstockPlotOptionsSlowstochasticZonesTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsSlowstochasticZonesTest >> testClassName [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsSlowstochasticZones new.
	component className: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'className' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsSlowstochasticZonesTest >> testColor [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsSlowstochasticZones new.
	component color: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'color' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsSlowstochasticZonesTest >> testDashStyle [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsSlowstochasticZones new.
	component dashStyle: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'dashStyle' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsSlowstochasticZonesTest >> testFillColor [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsSlowstochasticZones new.
	component fillColor: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'fillColor' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsSlowstochasticZonesTest >> testValue [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsSlowstochasticZones new.
	component value: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'value' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]