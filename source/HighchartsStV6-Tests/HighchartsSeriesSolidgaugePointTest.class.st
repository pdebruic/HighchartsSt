Class {
	#name : #HighchartsSeriesSolidgaugePointTest,
	#superclass : #TestCase,
	#category : 'HighchartsStV6-Tests'
}

{ #category : #'tests-accessing' }
HighchartsSeriesSolidgaugePointTest >> testEvents [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSolidgaugePoint new.
	component events: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'events' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
