Class {
	#name : #HighstockSeriesLinearregressioninterceptParamsTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesLinearregressioninterceptParamsTest >> testIndex [

	| component javascript expectedConfiguration |

	component := HighstockSeriesLinearregressioninterceptParams new.
	component index: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'index' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesLinearregressioninterceptParamsTest >> testPeriod [

	| component javascript expectedConfiguration |

	component := HighstockSeriesLinearregressioninterceptParams new.
	component period: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'period' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockSeriesLinearregressioninterceptParamsTest >> testXAxisUnit [

	| component javascript expectedConfiguration |

	component := HighstockSeriesLinearregressioninterceptParams new.
	component xAxisUnit: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'xAxisUnit' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]