"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesTemaPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesTemaPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]