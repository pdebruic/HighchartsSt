"
Animation when hovering over the marker.
"
Class {
	#name : #HighstockSeriesAroonoscillatorStatesSelectMarkerStatesHoverAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesAroonoscillatorStatesSelectMarkerStatesHoverAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]