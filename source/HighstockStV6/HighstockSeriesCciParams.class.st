Class {
	#name : #HighstockSeriesCciParams,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesCciParams >> index: aNumber [

	"The point index which indicator calculations will base.
For example using OHLC data, index=2 means the indicator will be calculated using Low values.
Defaults to 0."

	configurationOptions at: 'index' put: aNumber
]

{ #category : #accessing }
HighstockSeriesCciParams >> period: aNumber [

	"The base period for indicator calculations.
Defaults to 14."

	configurationOptions at: 'period' put: aNumber
]
