Class {
	#name : #HighchartsPlotOptionsLollipopStatesHoverHaloTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighchartsPlotOptionsLollipopStatesHoverHaloTest >> testAttributes [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsLollipopStatesHoverHalo new.
	component attributes: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'attributes' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsPlotOptionsLollipopStatesHoverHaloTest >> testOpacity [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsLollipopStatesHoverHalo new.
	component opacity: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'opacity' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsPlotOptionsLollipopStatesHoverHaloTest >> testSize [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsLollipopStatesHoverHalo new.
	component size: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'size' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]