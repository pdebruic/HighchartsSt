Class {
	#name : #HighstockSeriesNatrStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesNatrStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]