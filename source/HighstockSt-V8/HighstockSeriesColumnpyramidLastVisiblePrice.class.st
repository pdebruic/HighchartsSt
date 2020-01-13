"
The line marks the last price from visible range of points.
"
Class {
	#name : #HighstockSeriesColumnpyramidLastVisiblePrice,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesColumnpyramidLastVisiblePrice >> enabled: aBoolean [

	"Enable or disable the indicator.
Defaults to true."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesColumnpyramidLastVisiblePrice >> label [

	^ configurationOptions at: 'label' ifAbsentPut: [ HighstockSeriesColumnpyramidLastVisiblePriceLabel new ]
]