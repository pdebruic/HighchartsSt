Class {
	#name : #HighchartsSeriesStreamgraphDataAccessibility,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesStreamgraphDataAccessibility >> description: aString [

	"Provide a description of the data point, announced to screen readers.
Defaults to undefined."

	configurationOptions at: 'description' put: aString
]