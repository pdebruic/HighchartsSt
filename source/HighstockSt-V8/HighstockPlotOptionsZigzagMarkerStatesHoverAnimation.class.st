"
Animation when hovering over the marker.
"
Class {
	#name : #HighstockPlotOptionsZigzagMarkerStatesHoverAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsZigzagMarkerStatesHoverAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]