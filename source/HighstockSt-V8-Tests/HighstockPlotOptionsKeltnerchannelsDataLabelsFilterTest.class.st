Class {
	#name : #HighstockPlotOptionsKeltnerchannelsDataLabelsFilterTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsFilterTest >> testOperator [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsFilter new.
	component operator: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'operator' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsFilterTest >> testProperty [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsFilter new.
	component property: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'property' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsKeltnerchannelsDataLabelsFilterTest >> testValue [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsKeltnerchannelsDataLabelsFilter new.
	component value: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'value' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]