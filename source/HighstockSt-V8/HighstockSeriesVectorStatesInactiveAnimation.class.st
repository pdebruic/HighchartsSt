Class {
	#name : #HighstockSeriesVectorStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesVectorStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]