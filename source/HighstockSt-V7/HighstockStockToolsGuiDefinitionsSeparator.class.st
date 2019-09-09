Class {
	#name : #HighstockStockToolsGuiDefinitionsSeparator,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockStockToolsGuiDefinitionsSeparator >> symbol: aString [

	"A predefined background symbol for the button.
Defaults to separator.svg."

	configurationOptions at: 'symbol' put: aString
]