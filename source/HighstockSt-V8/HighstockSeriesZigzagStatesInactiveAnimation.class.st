Class {
	#name : #HighstockSeriesZigzagStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesZigzagStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]