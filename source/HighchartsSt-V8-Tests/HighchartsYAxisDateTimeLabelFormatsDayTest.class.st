Class {
	#name : #HighchartsYAxisDateTimeLabelFormatsDayTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighchartsYAxisDateTimeLabelFormatsDayTest >> testMain [

	| component javascript expectedConfiguration |

	component := HighchartsYAxisDateTimeLabelFormatsDay new.
	component main: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'main' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]