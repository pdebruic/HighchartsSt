Class {
	#name : #HighstockPlotOptionsArearangeStatesInactiveAnimationTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsArearangeStatesInactiveAnimationTest >> testDuration [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsArearangeStatesInactiveAnimation new.
	component duration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'duration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]