as yet unclassified
testIndex

	| component stream |

	component := HighchartsSeriesErrorbar new.
	component index: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"index":"test"}'