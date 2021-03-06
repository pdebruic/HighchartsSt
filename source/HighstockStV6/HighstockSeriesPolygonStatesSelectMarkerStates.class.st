"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesPolygonStatesSelectMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesPolygonStatesSelectMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesPolygonStatesSelectMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesPolygonStatesSelectMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesPolygonStatesSelectMarkerStatesSelect new]
]
