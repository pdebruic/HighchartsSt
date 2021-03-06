"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesAreasplineStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesAreasplineStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesAreasplineStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesAreasplineStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesAreasplineStatesHoverMarkerStatesSelect new]
]
