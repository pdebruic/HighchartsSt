"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesAroonPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesAroonPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]