as yet unclassified
testPointFormatter

	| component stream |

	component := HighchartsTooltip new.
	component pointFormatter: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"pointFormatter":"test"}'