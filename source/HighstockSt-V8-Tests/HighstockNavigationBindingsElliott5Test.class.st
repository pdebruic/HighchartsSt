Class {
	#name : #HighstockNavigationBindingsElliott5Test,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockNavigationBindingsElliott5Test >> testStart [

	| component javascript expectedConfiguration |

	component := HighstockNavigationBindingsElliott5 new.
	component start: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'start' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]