"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesVbpPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesVbpPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]