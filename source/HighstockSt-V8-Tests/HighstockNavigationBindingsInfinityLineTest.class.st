Class {
	#name : #HighstockNavigationBindingsInfinityLineTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockNavigationBindingsInfinityLineTest >> testStart [

	| component javascript expectedConfiguration |

	component := HighstockNavigationBindingsInfinityLine new.
	component start: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'start' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]