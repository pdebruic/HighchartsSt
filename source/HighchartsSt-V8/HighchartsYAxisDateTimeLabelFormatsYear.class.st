Class {
	#name : #HighchartsYAxisDateTimeLabelFormatsYear,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsYAxisDateTimeLabelFormatsYear >> main: aString [


	configurationOptions at: 'main' put: aString
]