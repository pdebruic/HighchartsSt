Class {
	#name : #HighchartsPlotOptionsBellcurveStatesHoverMarkerStatesNormalTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighchartsPlotOptionsBellcurveStatesHoverMarkerStatesNormalTest >> testAnimation [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsBellcurveStatesHoverMarkerStatesNormal new.
	component animation: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'animation' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]