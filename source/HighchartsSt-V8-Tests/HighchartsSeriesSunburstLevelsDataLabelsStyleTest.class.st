Class {
	#name : #HighchartsSeriesSunburstLevelsDataLabelsStyleTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighchartsSeriesSunburstLevelsDataLabelsStyleTest >> testColor [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSunburstLevelsDataLabelsStyle new.
	component color: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'color' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesSunburstLevelsDataLabelsStyleTest >> testFontSize [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSunburstLevelsDataLabelsStyle new.
	component fontSize: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'fontSize' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesSunburstLevelsDataLabelsStyleTest >> testFontWeight [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSunburstLevelsDataLabelsStyle new.
	component fontWeight: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'fontWeight' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesSunburstLevelsDataLabelsStyleTest >> testTextOutline [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSunburstLevelsDataLabelsStyle new.
	component textOutline: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'textOutline' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesSunburstLevelsDataLabelsStyleTest >> testTextOverflow [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSunburstLevelsDataLabelsStyle new.
	component textOverflow: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'textOverflow' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]