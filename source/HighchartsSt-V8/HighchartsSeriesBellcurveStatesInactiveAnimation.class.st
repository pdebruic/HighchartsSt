Class {
	#name : #HighchartsSeriesBellcurveStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesBellcurveStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]