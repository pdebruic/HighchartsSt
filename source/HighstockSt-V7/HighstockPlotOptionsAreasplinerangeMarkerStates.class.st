"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsAreasplinerangeMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsAreasplinerangeMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsAreasplinerangeMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsAreasplinerangeMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockPlotOptionsAreasplinerangeMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockPlotOptionsAreasplinerangeMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockPlotOptionsAreasplinerangeMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockPlotOptionsAreasplinerangeMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsAreasplinerangeMarkerStatesSelect new]
]