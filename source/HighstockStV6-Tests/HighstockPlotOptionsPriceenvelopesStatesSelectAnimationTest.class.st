Class {
	#name : #HighstockPlotOptionsPriceenvelopesStatesSelectAnimationTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsPriceenvelopesStatesSelectAnimationTest >> testDuration [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsPriceenvelopesStatesSelectAnimation new.
	component duration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'duration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
