"
States for a single point marker.
"
Class {
	#name : #HighchartsSeriesStreamgraphStatesSelectMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesStreamgraphStatesSelectMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsSeriesStreamgraphStatesSelectMarkerStatesHover new]
]

{ #category : #accessing }
HighchartsSeriesStreamgraphStatesSelectMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighchartsSeriesStreamgraphStatesSelectMarkerStatesInactive new]
]

{ #category : #accessing }
HighchartsSeriesStreamgraphStatesSelectMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsSeriesStreamgraphStatesSelectMarkerStatesNormal new]
]

{ #category : #accessing }
HighchartsSeriesStreamgraphStatesSelectMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsSeriesStreamgraphStatesSelectMarkerStatesSelect new]
]