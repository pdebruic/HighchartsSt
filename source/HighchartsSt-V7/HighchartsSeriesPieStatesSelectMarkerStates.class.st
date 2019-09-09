"
States for a single point marker.
"
Class {
	#name : #HighchartsSeriesPieStatesSelectMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesPieStatesSelectMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsSeriesPieStatesSelectMarkerStatesHover new]
]

{ #category : #accessing }
HighchartsSeriesPieStatesSelectMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighchartsSeriesPieStatesSelectMarkerStatesInactive new]
]

{ #category : #accessing }
HighchartsSeriesPieStatesSelectMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsSeriesPieStatesSelectMarkerStatesNormal new]
]

{ #category : #accessing }
HighchartsSeriesPieStatesSelectMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsSeriesPieStatesSelectMarkerStatesSelect new]
]