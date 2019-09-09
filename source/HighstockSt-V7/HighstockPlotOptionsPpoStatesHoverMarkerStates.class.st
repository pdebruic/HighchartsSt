"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsPpoStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsPpoStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsPpoStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsPpoStatesHoverMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockPlotOptionsPpoStatesHoverMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockPlotOptionsPpoStatesHoverMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockPlotOptionsPpoStatesHoverMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockPlotOptionsPpoStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsPpoStatesHoverMarkerStatesSelect new]
]