"
Highchart by default puts a credits label in the lower right corner
of the chart. This can be changed using these options.
"
Class {
	#name : #HighstockCredits,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockCredits >> enabled: aBoolean [

	"Whether to show the credits text.
Defaults to true."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighstockCredits >> href: aString [

	"The URL for the credits label.
Defaults to http://www.highcharts.com."

	configurationOptions at: 'href' put: aString
]

{ #category : #accessing }
HighstockCredits >> position [

	"Position configuration for the credits label.
"
	^configurationOptions at: 'position' ifAbsentPut: [HighstockCreditsPosition new]
]

{ #category : #accessing }
HighstockCredits >> style [

	"CSS styles for the credits label.
Defaults to { 'cursor': 'pointer', 'color': '#999999', 'fontSize': '10px' }."
	^configurationOptions at: 'style' ifAbsentPut: [HighstockCreditsStyle new]
]

{ #category : #accessing }
HighstockCredits >> text: aString [

	"The text for the credits label.
Defaults to Highcharts.com."

	configurationOptions at: 'text' put: aString
]
