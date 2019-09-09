"
Properties for each single point.
"
Class {
	#name : #HighchartsSeriesSankeyPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesSankeyPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]