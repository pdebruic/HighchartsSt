"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsAtrStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockPlotOptionsAtrStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsAtrStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsAtrStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsAtrStatesHoverMarkerStatesSelect new]
]
