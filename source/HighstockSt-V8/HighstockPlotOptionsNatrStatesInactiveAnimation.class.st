Class {
	#name : #HighstockPlotOptionsNatrStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsNatrStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]