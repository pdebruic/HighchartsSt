tests-accessing
testGridLineColor

	| component javascript expectedConfiguration |

	component := HighchartsZAxis new.
	component gridLineColor: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'gridLineColor' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript