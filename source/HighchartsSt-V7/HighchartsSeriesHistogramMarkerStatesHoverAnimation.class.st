"
Animation when hovering over the marker.
"
Class {
	#name : #HighchartsSeriesHistogramMarkerStatesHoverAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesHistogramMarkerStatesHoverAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]