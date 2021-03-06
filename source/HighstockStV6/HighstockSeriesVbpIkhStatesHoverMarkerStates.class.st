"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesVbpIkhStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesVbpIkhStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesVbpIkhStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesVbpIkhStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesVbpIkhStatesHoverMarkerStatesSelect new]
]
