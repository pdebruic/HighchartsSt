Class {
	#name : #HighstockSeriesLinearregressionLastVisiblePriceTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesLinearregressionLastVisiblePriceTest >> testEnabled [

	| component javascript expectedConfiguration |

	component := HighstockSeriesLinearregressionLastVisiblePrice new.
	component enabled: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'enabled' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]