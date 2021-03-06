Class {
	#name : #HighstockSeriesCmfParams,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesCmfParams >> index: aNumber [

	"The point index which indicator calculations will base.
For example using OHLC data, index=2 means the indicator will be calculated using Low values.
Defaults to 0."

	configurationOptions at: 'index' put: aNumber
]

{ #category : #accessing }
HighstockSeriesCmfParams >> period: aNumber [

	"The base period for indicator calculations.
Defaults to 14."

	configurationOptions at: 'period' put: aNumber
]

{ #category : #accessing }
HighstockSeriesCmfParams >> volumeSeriesID: aString [

	"The id of another series to use its data as volume data for the indiator calculation.
Defaults to volume."

	configurationOptions at: 'volumeSeriesID' put: aString
]
