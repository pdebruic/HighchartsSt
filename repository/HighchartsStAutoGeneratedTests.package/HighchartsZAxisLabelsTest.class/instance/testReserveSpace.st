as yet unclassified
testReserveSpace

	| component stream |

	component := HighchartsZAxisLabels new.
	component reserveSpace: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"reserveSpace":"test"}'