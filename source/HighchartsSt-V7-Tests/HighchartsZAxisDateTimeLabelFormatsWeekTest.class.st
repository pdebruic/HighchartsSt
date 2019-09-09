Class {
	#name : #HighchartsZAxisDateTimeLabelFormatsWeekTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighchartsZAxisDateTimeLabelFormatsWeekTest >> testMain [

	| component javascript expectedConfiguration |

	component := HighchartsZAxisDateTimeLabelFormatsWeek new.
	component main: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'main' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]