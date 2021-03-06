"
States for a single point marker.
"
Class {
	#name : #HighchartsPlotOptionsAreasplinerangeStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsPlotOptionsAreasplinerangeStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsPlotOptionsAreasplinerangeStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighchartsPlotOptionsAreasplinerangeStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsPlotOptionsAreasplinerangeStatesHoverMarkerStatesSelect new]
]
