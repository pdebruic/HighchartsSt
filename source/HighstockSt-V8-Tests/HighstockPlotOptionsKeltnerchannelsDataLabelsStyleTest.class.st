Class {
	#name : #HighstockPlotOptionsKeltnerchannelsDataLabelsStyleTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsStyleTest >> testColor [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsStyle new.
	component color: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'color' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsStyleTest >> testFontSize [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsStyle new.
	component fontSize: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'fontSize' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsStyleTest >> testFontWeight [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsStyle new.
	component fontWeight: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'fontWeight' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsStyleTest >> testTextOutline [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsStyle new.
	component textOutline: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'textOutline' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]