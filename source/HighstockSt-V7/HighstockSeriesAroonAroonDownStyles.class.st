"
Styles for an aroonDown line.
"
Class {
	#name : #HighstockSeriesAroonAroonDownStyles,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesAroonAroonDownStyles >> lineColor: aHighchartsColorString [

	"Color of the line. If not set, it´s inherited from
plotOptions.aroon.color.
"

	configurationOptions at: 'lineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockSeriesAroonAroonDownStyles >> lineWidth: aNumber [

	"Pixel width of the line.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]