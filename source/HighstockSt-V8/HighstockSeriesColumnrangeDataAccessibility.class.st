Class {
	#name : #HighstockSeriesColumnrangeDataAccessibility,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesColumnrangeDataAccessibility >> description: aString [

	"Provide a description of the data point, announced to screen readers.
"

	configurationOptions at: 'description' put: aString
]