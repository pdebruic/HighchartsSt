"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesWilliamsrPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesWilliamsrPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]