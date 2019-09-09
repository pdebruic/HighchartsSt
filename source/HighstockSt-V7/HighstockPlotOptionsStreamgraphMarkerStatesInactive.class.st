Class {
	#name : #HighstockPlotOptionsStreamgraphMarkerStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsStreamgraphMarkerStatesInactive >> opacity: anObject [

	"Opacity of inactive markers.
"

	configurationOptions at: 'opacity' put: anObject
]