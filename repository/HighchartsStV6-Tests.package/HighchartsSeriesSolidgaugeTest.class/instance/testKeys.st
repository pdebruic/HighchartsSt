tests-accessing
testKeys

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSolidgauge new.
	component keys: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'solidgauge';
		at: 'keys' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript