Class {
	#name : #HighstockNavigationEventsTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighstockNavigationEventsTest >> testClosePopup [

	| component javascript expectedConfiguration |

	component := HighstockNavigationEvents new.
	component closePopup: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'closePopup' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockNavigationEventsTest >> testDeselectButton [

	| component javascript expectedConfiguration |

	component := HighstockNavigationEvents new.
	component deselectButton: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'deselectButton' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockNavigationEventsTest >> testSelectButton [

	| component javascript expectedConfiguration |

	component := HighstockNavigationEvents new.
	component selectButton: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'selectButton' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockNavigationEventsTest >> testShowPopup [

	| component javascript expectedConfiguration |

	component := HighstockNavigationEvents new.
	component showPopup: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'showPopup' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]