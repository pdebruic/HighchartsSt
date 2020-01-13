"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesCciPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesCciPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]