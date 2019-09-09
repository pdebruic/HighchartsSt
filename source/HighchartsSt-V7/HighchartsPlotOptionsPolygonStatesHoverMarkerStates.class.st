"
States for a single point marker.
"
Class {
	#name : #HighchartsPlotOptionsPolygonStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsPolygonStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsPlotOptionsPolygonStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighchartsPlotOptionsPolygonStatesHoverMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighchartsPlotOptionsPolygonStatesHoverMarkerStatesInactive new]
]

{ #category : #accessing }
HighchartsPlotOptionsPolygonStatesHoverMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsPlotOptionsPolygonStatesHoverMarkerStatesNormal new]
]

{ #category : #accessing }
HighchartsPlotOptionsPolygonStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsPlotOptionsPolygonStatesHoverMarkerStatesSelect new]
]