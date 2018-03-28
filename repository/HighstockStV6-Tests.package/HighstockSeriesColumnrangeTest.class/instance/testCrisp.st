tests-accessing
testCrisp

	| component javascript expectedConfiguration |

	component := HighstockSeriesColumnrange new.
	component crisp: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'columnrange';
		at: 'crisp' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript