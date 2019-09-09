Class {
	#name : #HighstockStockToolsGuiDefinitionsZoomChangeZoomY,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockStockToolsGuiDefinitionsZoomChangeZoomY >> symbol: aString [

	"A predefined background symbol for the button.
Defaults to zoom-y.svg."

	configurationOptions at: 'symbol' put: aString
]