as yet unclassified
testZones

	| component stream |

	component := HighstockSeriesColumn new.
	component zones: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"zones":"test"}'