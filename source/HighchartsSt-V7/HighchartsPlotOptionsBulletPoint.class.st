"
Properties for each single point.
"
Class {
	#name : #HighchartsPlotOptionsBulletPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsBulletPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]