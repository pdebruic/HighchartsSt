Class {
	#name : #HighstockPlotOptionsVbpStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsVbpStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]