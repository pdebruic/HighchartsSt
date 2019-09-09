"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesTrixPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesTrixPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]