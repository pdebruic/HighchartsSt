Class {
	#name : #HighstockSeriesEmaIkhStatesNormalTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesEmaIkhStatesNormalTest >> testAnimation [

	| component javascript expectedConfiguration |

	component := HighstockSeriesEmaIkhStatesNormal new.
	component animation: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'animation' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
