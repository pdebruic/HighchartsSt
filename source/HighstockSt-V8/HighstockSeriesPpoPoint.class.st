"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesPpoPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesPpoPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]