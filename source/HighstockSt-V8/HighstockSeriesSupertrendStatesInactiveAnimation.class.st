Class {
	#name : #HighstockSeriesSupertrendStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesSupertrendStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]