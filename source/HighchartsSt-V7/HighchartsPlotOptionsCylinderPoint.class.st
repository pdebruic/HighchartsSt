"
Properties for each single point.
"
Class {
	#name : #HighchartsPlotOptionsCylinderPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsCylinderPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]