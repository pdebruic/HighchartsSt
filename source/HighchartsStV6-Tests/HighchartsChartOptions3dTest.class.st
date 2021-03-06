Class {
	#name : #HighchartsChartOptions3dTest,
	#superclass : #TestCase,
	#category : 'HighchartsStV6-Tests'
}

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testAlpha [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component alpha: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'alpha' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testAxisLabelPosition [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component axisLabelPosition: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'axisLabelPosition' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testBeta [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component beta: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'beta' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testDepth [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component depth: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'depth' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testEnabled [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component enabled: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'enabled' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testFitToPlot [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component fitToPlot: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'fitToPlot' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsChartOptions3dTest >> testViewDistance [

	| component javascript expectedConfiguration |

	component := HighchartsChartOptions3d new.
	component viewDistance: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'viewDistance' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
