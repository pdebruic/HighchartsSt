"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesVennPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesVennPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]