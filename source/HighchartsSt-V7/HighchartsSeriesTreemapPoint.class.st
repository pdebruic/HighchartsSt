"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesTreemapPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesTreemapPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]