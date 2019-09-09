"
Animation when not hovering over the marker.
"
Class {
	#name : #HighchartsPlotOptionsOrganizationStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsOrganizationStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]