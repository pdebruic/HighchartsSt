"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesColumnPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesColumnPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]