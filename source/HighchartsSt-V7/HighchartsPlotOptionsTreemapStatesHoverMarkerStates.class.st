"
States for a single point marker.
"
Class {
	#name : #HighchartsPlotOptionsTreemapStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsTreemapStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsPlotOptionsTreemapStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighchartsPlotOptionsTreemapStatesHoverMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighchartsPlotOptionsTreemapStatesHoverMarkerStatesInactive new]
]

{ #category : #accessing }
HighchartsPlotOptionsTreemapStatesHoverMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsPlotOptionsTreemapStatesHoverMarkerStatesNormal new]
]

{ #category : #accessing }
HighchartsPlotOptionsTreemapStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsPlotOptionsTreemapStatesHoverMarkerStatesSelect new]
]