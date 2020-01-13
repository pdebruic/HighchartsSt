"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesNatrPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesNatrPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]