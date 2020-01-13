Class {
	#name : #HighchartsSeriesTreemapClusterEventsTest,
	#superclass : #TestCase,
	#category : #'HighchartsSt-V8-Tests'
}

{ #category : #'tests-accessing' }
HighchartsSeriesTreemapClusterEventsTest >> testDrillToCluster [

	| component javascript expectedConfiguration |

	component := HighchartsSeriesTreemapClusterEvents new.
	component drillToCluster: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'drillToCluster' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]