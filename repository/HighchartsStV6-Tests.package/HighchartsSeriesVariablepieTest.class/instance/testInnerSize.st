tests-accessing
testInnerSize

	| component javascript expectedConfiguration |

	component := HighchartsSeriesVariablepie new.
	component innerSize: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'variablepie';
		at: 'innerSize' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript