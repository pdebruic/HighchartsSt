"
Styles for the series label. The color defaults to the series
color, or a contrast color if onArea.
"
Class {
	#name : #HighstockSeriesPackedbubbleLabelStyle,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesPackedbubbleLabelStyle >> fontWeight: aString [


	configurationOptions at: 'fontWeight' put: aString
]