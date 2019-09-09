Class {
	#name : #HighstockStockToolsGuiDefinitionsAdvancedPitchfork,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockStockToolsGuiDefinitionsAdvancedPitchfork >> symbol: aString [

	"A predefined background symbol for the button.
Defaults to pitchfork.svg."

	configurationOptions at: 'symbol' put: aString
]