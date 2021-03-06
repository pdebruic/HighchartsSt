"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsLineMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockPlotOptionsLineMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsLineMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsLineMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsLineMarkerStatesSelect new]
]
