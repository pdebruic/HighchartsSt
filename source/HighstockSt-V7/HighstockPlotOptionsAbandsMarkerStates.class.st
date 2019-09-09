"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsAbandsMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsAbandsMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsAbandsMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsAbandsMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockPlotOptionsAbandsMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockPlotOptionsAbandsMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockPlotOptionsAbandsMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockPlotOptionsAbandsMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsAbandsMarkerStatesSelect new]
]