"
Styles for the series label. The color defaults to the series
color, or a contrast color if onArea.
"
Class {
	#name : #HighstockSeriesArearangeLabelStyle,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesArearangeLabelStyle >> fontWeight: aString [


	configurationOptions at: 'fontWeight' put: aString
]
