"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesVectorStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesVectorStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesVectorStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesVectorStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesVectorStatesHoverMarkerStatesSelect new]
]
