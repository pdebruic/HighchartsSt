Class {
	#name : #HighstockPlotOptionsAbandsStatesInactiveAnimationTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsAbandsStatesInactiveAnimationTest >> testDuration [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsAbandsStatesInactiveAnimation new.
	component duration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'duration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]