"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesKeltnerchannelsPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesKeltnerchannelsPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]