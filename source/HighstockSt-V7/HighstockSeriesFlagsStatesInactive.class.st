"
The opposite state of a hover for series.
"
Class {
	#name : #HighstockSeriesFlagsStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesFlagsStatesInactive >> animation [

	^configurationOptions at: 'animation' ifAbsentPut: [HighstockSeriesFlagsStatesInactiveAnimation new]
]

{ #category : #accessing }
HighstockSeriesFlagsStatesInactive >> opacity: aNumber [

	"Opacity of series elements (dataLabels, line, area).
Defaults to 0.2."

	configurationOptions at: 'opacity' put: aNumber
]