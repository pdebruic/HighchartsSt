Class {
	#name : #HighstockSeriesPivotpointsIkhPointTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesPivotpointsIkhPointTest >> testEvents [

	| component javascript expectedConfiguration |

	component := HighstockSeriesPivotpointsIkhPoint new.
	component events: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'events' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
