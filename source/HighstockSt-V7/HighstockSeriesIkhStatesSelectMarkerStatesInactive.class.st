Class {
	#name : #HighstockSeriesIkhStatesSelectMarkerStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesIkhStatesSelectMarkerStatesInactive >> opacity: anObject [

	"Opacity of inactive markers.
"

	configurationOptions at: 'opacity' put: anObject
]