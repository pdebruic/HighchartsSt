Class {
	#name : #HighstockPlotOptionsBbParams,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockPlotOptionsBbParams >> index: aNumber [

	"The point index which indicator calculations will base.
For example using OHLC data, index=2 means the indicator will be calculated using Low values.
Defaults to 3."

	configurationOptions at: 'index' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsBbParams >> period: aNumber [

	"The base period for indicator calculations.
Defaults to 20."

	configurationOptions at: 'period' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsBbParams >> standardDeviation: aNumber [

	"Standard deviation for top and bottom bands.
Defaults to 2."

	configurationOptions at: 'standardDeviation' put: aNumber
]
