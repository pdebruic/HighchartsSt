"
Animation when hovering over the marker.
"
Class {
	#name : #HighchartsSeriesWindbarbDataMarkerStatesHoverAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesWindbarbDataMarkerStatesHoverAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]