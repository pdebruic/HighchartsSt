Class {
	#name : #HighchartsSeriesFunnelStatesInactiveAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesFunnelStatesInactiveAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]