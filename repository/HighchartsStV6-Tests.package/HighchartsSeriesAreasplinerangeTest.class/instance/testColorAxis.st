tests-accessing
testColorAxis

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerange new.
	component colorAxis: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'areasplinerange';
		at: 'colorAxis' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript