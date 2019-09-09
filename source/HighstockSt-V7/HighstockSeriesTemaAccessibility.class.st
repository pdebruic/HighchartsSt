"
Accessibility options for a series. Requires the accessibility module.
"
Class {
	#name : #HighstockSeriesTemaAccessibility,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesTemaAccessibility >> description: aString [

	"Provide a description of the series, announced to screen readers.
Defaults to undefined."

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighstockSeriesTemaAccessibility >> enabled: aBoolean [

	"Enable/disable accessibility functionality for a specific series.
Defaults to undefined."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesTemaAccessibility >> exposeAsGroupOnly: aBoolean [

	"Expose only the series element to screen readers, not its points.
Defaults to undefined."

	configurationOptions at: 'exposeAsGroupOnly' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesTemaAccessibility >> keyboardNavigation [

	"Keyboard navigation for a series
"
	^configurationOptions at: 'keyboardNavigation' ifAbsentPut: [HighstockSeriesTemaAccessibilityKeyboardNavigation new]
]

{ #category : #accessing }
HighstockSeriesTemaAccessibility >> pointDescriptionFormatter: aFunction [

	"Formatter function to use instead of the default for point
descriptions. Same as accessibility.pointDescriptionFormatter, but for
a single series.
Defaults to undefined."

	configurationOptions at: 'pointDescriptionFormatter' put: aFunction
]