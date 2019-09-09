"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesAroonoscillatorStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesAroonoscillatorStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesAroonoscillatorStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesAroonoscillatorStatesHoverMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockSeriesAroonoscillatorStatesHoverMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockSeriesAroonoscillatorStatesHoverMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesAroonoscillatorStatesHoverMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesAroonoscillatorStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesAroonoscillatorStatesHoverMarkerStatesSelect new]
]