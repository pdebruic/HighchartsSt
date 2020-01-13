"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesColumnrangePoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesColumnrangePoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]