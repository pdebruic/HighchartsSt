Class {
	#name : #HighstockSeriesKeltnerchannelsStatesInactiveTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesKeltnerchannelsStatesInactiveTest >> testOpacity [

	| component javascript expectedConfiguration |

	component := HighstockSeriesKeltnerchannelsStatesInactive new.
	component opacity: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'opacity' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]