Class {
	#name : #HighstockSeriesRsiStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesRsiStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]