Class {
	#name : #HighchartsSeriesGaugeDataAccessibility,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesGaugeDataAccessibility >> description: aString [

	"Provide a description of the data point, announced to screen readers.
Defaults to undefined."

	configurationOptions at: 'description' put: aString
]