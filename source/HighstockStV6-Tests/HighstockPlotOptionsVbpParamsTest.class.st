Class {
	#name : #HighstockPlotOptionsVbpParamsTest,
	#superclass : #TestCase,
	#category : 'HighstockStV6-Tests'
}

{ #category : #'tests-accessing' }
HighstockPlotOptionsVbpParamsTest >> testRanges [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsVbpParams new.
	component ranges: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'ranges' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]

{ #category : #'tests-accessing' }
HighstockPlotOptionsVbpParamsTest >> testVolumeSeriesID [

	| component javascript expectedConfiguration |

	component := HighstockPlotOptionsVbpParams new.
	component volumeSeriesID: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'volumeSeriesID' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]
