"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesBarPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesBarPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]