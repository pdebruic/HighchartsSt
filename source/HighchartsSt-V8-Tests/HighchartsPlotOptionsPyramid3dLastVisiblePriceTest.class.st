Class {
	#name : #HighchartsPlotOptionsPyramid3dLastVisiblePriceTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighchartsPlotOptionsPyramid3dLastVisiblePriceTest >> testEnabled [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsPyramid3dLastVisiblePrice new.
	component enabled: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'enabled' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]