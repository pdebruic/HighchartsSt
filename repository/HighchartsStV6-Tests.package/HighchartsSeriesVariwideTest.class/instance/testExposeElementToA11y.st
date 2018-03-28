tests-accessing
testExposeElementToA11y

	| component javascript expectedConfiguration |

	component := HighchartsSeriesVariwide new.
	component exposeElementToA11y: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'variwide';
		at: 'exposeElementToA11y' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript