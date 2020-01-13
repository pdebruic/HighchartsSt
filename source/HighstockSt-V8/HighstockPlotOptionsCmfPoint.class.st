"
Properties for each single point.
"
Class {
	#name : #HighstockPlotOptionsCmfPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsCmfPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]