Class {
	#name : #HighchartsSeriesAreasplinerangePointEventsTest,
	#superclass : #TestCase,
	#category : 'HighchartsStV6-Tests'
}

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testClick [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component click: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'click' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testMouseOut [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component mouseOut: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'mouseOut' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testMouseOver [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component mouseOver: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'mouseOver' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testRemove [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component remove: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'remove' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testSelect [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component select: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'select' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testUnselect [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component unselect: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'unselect' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighchartsSeriesAreasplinerangePointEventsTest >> testUpdate [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerangePointEvents new.
	component update: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'update' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
