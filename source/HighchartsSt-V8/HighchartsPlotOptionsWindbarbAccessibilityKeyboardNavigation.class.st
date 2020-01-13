"
Keyboard navigation for a series
"
Class {
	#name : #HighchartsPlotOptionsWindbarbAccessibilityKeyboardNavigation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsWindbarbAccessibilityKeyboardNavigation >> enabled: aBoolean [

	"Enable/disable keyboard navigation support for a specific series.
"

	configurationOptions at: 'enabled' put: aBoolean
]