"
Initial animation is by default disabled for the funnel chart.
"
Class {
	#name : #HighchartsPlotOptionsPyramidAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsPyramidAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]