Class {
	#name : #HighchartsPlotOptionsScatter3dStatesNormalTest,
	#superclass : #TestCase,
	#category : 'HighchartsStV6-Tests'
}

{ #category : #'tests-accessing' }
HighchartsPlotOptionsScatter3dStatesNormalTest >> testAnimation [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsScatter3dStatesNormal new.
	component animation: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'animation' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
