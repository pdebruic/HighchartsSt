"
Animation when hovering over the marker.
"
Class {
	#name : #HighchartsPlotOptionsVennStatesHoverMarkerStatesHoverAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsVennStatesHoverMarkerStatesHoverAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]