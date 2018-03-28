tests-accessing
testSoftThreshold

	| component javascript expectedConfiguration |

	component := HighchartsSeriesSpline new.
	component softThreshold: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'spline';
		at: 'softThreshold' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript