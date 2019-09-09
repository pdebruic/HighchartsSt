"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesMfiStatesSelectMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesMfiStatesSelectMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesMfiStatesSelectMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesMfiStatesSelectMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockSeriesMfiStatesSelectMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockSeriesMfiStatesSelectMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesMfiStatesSelectMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesMfiStatesSelectMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesMfiStatesSelectMarkerStatesSelect new]
]