"
The line marks the last price from visible range of points.
"
Class {
	#name : #HighstockSeriesIkhLastVisiblePrice,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesIkhLastVisiblePrice >> enabled: aBoolean [

	"Enable or disable the indicator.
Defaults to true."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesIkhLastVisiblePrice >> label [

	^configurationOptions at: 'label' ifAbsentPut: [HighstockSeriesIkhLastVisiblePriceLabel new]
]