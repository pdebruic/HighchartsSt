Class {
	#name : #HighchartsSeriesColumnpyramidStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesColumnpyramidStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]