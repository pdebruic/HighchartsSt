as yet unclassified
testPointStart

	| component stream |

	component := HighstockPlotOptionsColumn new.
	component pointStart: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"pointStart":"test"}'