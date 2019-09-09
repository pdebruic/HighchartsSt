Class {
	#name : #HighchartsSeriesPyramidStatesHoverMarkerStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesPyramidStatesHoverMarkerStatesInactive >> opacity: anObject [

	"Opacity of inactive markers.
"

	configurationOptions at: 'opacity' put: anObject
]