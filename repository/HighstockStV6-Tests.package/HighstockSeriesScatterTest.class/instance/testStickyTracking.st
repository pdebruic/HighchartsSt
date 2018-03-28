tests-accessing
testStickyTracking

	| component javascript expectedConfiguration |

	component := HighstockSeriesScatter new.
	component stickyTracking: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'scatter';
		at: 'stickyTracking' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript