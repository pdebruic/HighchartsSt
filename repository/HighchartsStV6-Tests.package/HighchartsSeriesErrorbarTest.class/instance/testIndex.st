tests-accessing
testIndex

	| component javascript expectedConfiguration |

	component := HighchartsSeriesErrorbar new.
	component index: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'errorbar';
		at: 'index' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript