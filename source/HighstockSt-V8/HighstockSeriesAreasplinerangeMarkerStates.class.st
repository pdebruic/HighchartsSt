"
States for a single point marker.
"
Class {
	#name : #HighstockSeriesAreasplinerangeMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesAreasplinerangeMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^ configurationOptions at: 'hover' ifAbsentPut: [ HighstockSeriesAreasplinerangeMarkerStatesHover new ]
]

{ #category : #accessing }
HighstockSeriesAreasplinerangeMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^ configurationOptions at: 'normal' ifAbsentPut: [ HighstockSeriesAreasplinerangeMarkerStatesNormal new ]
]

{ #category : #accessing }
HighstockSeriesAreasplinerangeMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^ configurationOptions at: 'select' ifAbsentPut: [ HighstockSeriesAreasplinerangeMarkerStatesSelect new ]
]