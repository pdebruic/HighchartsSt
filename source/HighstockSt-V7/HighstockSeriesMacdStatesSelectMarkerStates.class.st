"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesMacdStatesSelectMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesMacdStatesSelectMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesMacdStatesSelectMarkerStatesHover new]
]

{ #category : #accessing }
HighstockSeriesMacdStatesSelectMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockSeriesMacdStatesSelectMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockSeriesMacdStatesSelectMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesMacdStatesSelectMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesMacdStatesSelectMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesMacdStatesSelectMarkerStatesSelect new]
]