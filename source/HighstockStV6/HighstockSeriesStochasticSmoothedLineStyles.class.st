"
Styles for a smoothed line.
"
Class {
	#name : #HighstockSeriesStochasticSmoothedLineStyles,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesStochasticSmoothedLineStyles >> lineColor: aString [

	"Color of the line.
If not set, it´s inherited from plotOptions.stochastic.color.
"

	configurationOptions at: 'lineColor' put: aString
]

{ #category : #accessing }
HighstockSeriesStochasticSmoothedLineStyles >> lineWidth: aNumber [

	"Pixel width of the line.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]
