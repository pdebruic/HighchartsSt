Class {
	#name : #HighstockPlotOptionsMacdSignalLineStyles,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsMacdSignalLineStyles >> lineColor: aHighchartsColorString [

	"Color of the line.
"

	configurationOptions at: 'lineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockPlotOptionsMacdSignalLineStyles >> lineWidth: aNumber [

	"Pixel width of the line.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]