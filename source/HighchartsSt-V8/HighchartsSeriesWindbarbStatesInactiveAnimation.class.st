Class {
	#name : #HighchartsSeriesWindbarbStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesWindbarbStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]