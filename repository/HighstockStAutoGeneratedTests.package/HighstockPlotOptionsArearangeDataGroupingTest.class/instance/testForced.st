as yet unclassified
testForced

	| component stream |

	component := HighstockPlotOptionsArearangeDataGrouping new.
	component forced: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"forced":"test"}'