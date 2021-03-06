Class {
	#name : #HighchartsLoadingTest,
	#superclass : #TestCase,
	#category : 'HighchartsStV6-Tests'
}

{ #category : #'tests-accessing' }
HighchartsLoadingTest >> testHideDuration [

	| component javascript expectedConfiguration |

	component := HighchartsLoading new.
	component hideDuration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'hideDuration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsLoadingTest >> testShowDuration [

	| component javascript expectedConfiguration |

	component := HighchartsLoading new.
	component showDuration: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'showDuration' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
