Class {
	#name : #HighstockNavigationBindingsVerticalArrowTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockNavigationBindingsVerticalArrowTest >> testStart [

	| component javascript expectedConfiguration |

	component := HighstockNavigationBindingsVerticalArrow new.
	component start: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'start' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]