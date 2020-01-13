"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesItemPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesItemPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]