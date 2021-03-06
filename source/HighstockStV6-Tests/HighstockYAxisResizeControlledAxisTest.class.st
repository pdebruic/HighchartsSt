Class {
	#name : #HighstockYAxisResizeControlledAxisTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockYAxisResizeControlledAxisTest >> testNext [

	| component javascript expectedConfiguration |

	component := HighstockYAxisResizeControlledAxis new.
	component next: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'next' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockYAxisResizeControlledAxisTest >> testPrev [

	| component javascript expectedConfiguration |

	component := HighstockYAxisResizeControlledAxis new.
	component prev: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'prev' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
