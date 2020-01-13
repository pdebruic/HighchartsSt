"
Options for descriptions of individual data points.
"
Class {
	#name : #HighstockAccessibilityPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockAccessibilityPoint >> dateFormat: aString [

	"Date format to use for points on datetime axes when describing them
to screen reader users.
Defaults to the same format as in tooltip.
For an overview of the replacement codes, see
dateFormat.
"

	configurationOptions at: 'dateFormat' put: aString
]

{ #category : #accessing }
HighstockAccessibilityPoint >> dateFormatter: aHighchartsScreenReaderFormatterCallbackFunctionOfHighchartsPoint [

	"Formatter function to determine the date/time format used with
points on datetime axes when describing them to screen reader users.
Receives one argument, point, referring to the point to describe.
Should return a date format string compatible with
dateFormat.
"

	configurationOptions at: 'dateFormatter' put: aHighchartsScreenReaderFormatterCallbackFunctionOfHighchartsPoint
]

{ #category : #accessing }
HighstockAccessibilityPoint >> descriptionFormatter: aHighchartsScreenReaderFormatterCallbackFunctionOfHighchartsPoint [

	"Formatter function to use instead of the default for point
descriptions.
Receives one argument, point, referring to the point to describe.
Should return a string with the description of the point for a screen
reader user. If false is returned, the default formatter will be
used for that point.
"

	configurationOptions at: 'descriptionFormatter' put: aHighchartsScreenReaderFormatterCallbackFunctionOfHighchartsPoint
]

{ #category : #accessing }
HighstockAccessibilityPoint >> valueDecimals: aNumber [

	"Decimals to use for the values in the point descriptions. Uses
tooltip.valueDecimals if not defined.
"

	configurationOptions at: 'valueDecimals' put: aNumber
]

{ #category : #accessing }
HighstockAccessibilityPoint >> valuePrefix: aString [

	"Prefix to add to the values in the point descriptions. Uses
tooltip.valuePrefix if not defined.
"

	configurationOptions at: 'valuePrefix' put: aString
]

{ #category : #accessing }
HighstockAccessibilityPoint >> valueSuffix: aString [

	"Suffix to add to the values in the point descriptions. Uses
tooltip.valueSuffix if not defined.
"

	configurationOptions at: 'valueSuffix' put: aString
]