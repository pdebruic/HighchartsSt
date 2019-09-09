Class {
	#name : #HighchartsPlotOptionsPackedbubbleAccessibilityKeyboardNavigationTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighchartsPlotOptionsPackedbubbleAccessibilityKeyboardNavigationTest >> testEnabled [

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsPackedbubbleAccessibilityKeyboardNavigation new.
	component enabled: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'enabled' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]