Class {
	#name : #HighstockSeriesMacdParamsTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesMacdParamsTest >> testIndex [

	| component javascript expectedConfiguration |

	component := HighstockSeriesMacdParams new.
	component index: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'index' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesMacdParamsTest >> testLongPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesMacdParams new.
	component longPeriod: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'longPeriod' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesMacdParamsTest >> testPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesMacdParams new.
	component period: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'period' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesMacdParamsTest >> testShortPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesMacdParams new.
	component shortPeriod: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'shortPeriod' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesMacdParamsTest >> testSignalPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesMacdParams new.
	component signalPeriod: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'signalPeriod' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
