Class {
	#name : #HighstockPlotOptionsLinearregressionangleAnimationTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsLinearregressionangleAnimationTest >> testDuration [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsLinearregressionangleAnimation new.
	component duration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'duration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]