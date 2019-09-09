Class {
	#name : #HighstockPlotOptionsWilliamsrStatesSelectAnimationTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsWilliamsrStatesSelectAnimationTest >> testDuration [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsWilliamsrStatesSelectAnimation new.
	component duration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'duration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]