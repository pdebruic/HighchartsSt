Class {
	#name : #HighstockSeriesAoMarkerStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesAoMarkerStatesInactive >> opacity: anObject [

	"Opacity of inactive markers.
"

	configurationOptions at: 'opacity' put: anObject
]