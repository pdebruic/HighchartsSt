as yet unclassified
testButtonBorderWidth

	| component stream |

	component := HighstockYAxisScrollbar new.
	component buttonBorderWidth: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"buttonBorderWidth":"test"}'