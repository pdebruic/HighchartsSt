Class {
	#name : #HighstockSeriesIkhParamsTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesIkhParamsTest >> testIndex [

	| component javascript expectedConfiguration |

	component := HighstockSeriesIkhParams new.
	component index: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'index' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesIkhParamsTest >> testPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesIkhParams new.
	component period: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'period' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesIkhParamsTest >> testPeriodSenkouSpanB [

	| component javascript expectedConfiguration |

	component := HighstockSeriesIkhParams new.
	component periodSenkouSpanB: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'periodSenkouSpanB' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesIkhParamsTest >> testPeriodTenkan [

	| component javascript expectedConfiguration |

	component := HighstockSeriesIkhParams new.
	component periodTenkan: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'periodTenkan' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]