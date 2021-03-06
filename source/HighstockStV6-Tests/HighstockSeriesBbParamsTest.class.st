Class {
	#name : #HighstockSeriesBbParamsTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesBbParamsTest >> testIndex [

	| component javascript expectedConfiguration |

	component := HighstockSeriesBbParams new.
	component index: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'index' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesBbParamsTest >> testPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesBbParams new.
	component period: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'period' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesBbParamsTest >> testStandardDeviation [

	| component javascript expectedConfiguration |

	component := HighstockSeriesBbParams new.
	component standardDeviation: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'standardDeviation' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
