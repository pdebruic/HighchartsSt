Class {
	#name : #HighstockSeriesApoStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesApoStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]