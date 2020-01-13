"
Properties for each single point.
"
Class {
	#name : #HighstockPlotOptionsColumnrangePoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsColumnrangePoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]