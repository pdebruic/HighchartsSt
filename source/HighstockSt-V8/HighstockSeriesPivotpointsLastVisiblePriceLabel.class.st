Class {
	#name : #HighstockSeriesPivotpointsLastVisiblePriceLabel,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesPivotpointsLastVisiblePriceLabel >> enabled: aBoolean [

	"Enable or disable the label.
Defaults to true."

	configurationOptions at: 'enabled' put: aBoolean
]