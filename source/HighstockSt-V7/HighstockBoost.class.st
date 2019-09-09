Class {
	#name : #HighstockBoost,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockBoost >> allowForce: aBoolean [

	"If set to true, the whole chart will be boosted if one of the series
crosses its threshold, and all the series can be boosted.
Defaults to true."

	configurationOptions at: 'allowForce' put: aBoolean
]

{ #category : #accessing }
HighstockBoost >> debug [

	"Debugging options for boost.
Useful for benchmarking, and general timing.
"
	^configurationOptions at: 'debug' ifAbsentPut: [HighstockBoostDebug new]
]

{ #category : #accessing }
HighstockBoost >> enabled: aBoolean [

	"Enable or disable boost on a chart.
Defaults to true."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighstockBoost >> seriesThreshold: aNumberOrNil [

	"Set the series threshold for when the boost should kick in globally.
Setting to e.g. 20 will cause the whole chart to enter boost mode
if there are 20 or more series active. When the chart is in boost mode,
every series in it will be rendered to a common canvas. This offers
a significant speed improvment in charts with a very high
amount of series.
Defaults to null."

	configurationOptions at: 'seriesThreshold' put: aNumberOrNil
]

{ #category : #accessing }
HighstockBoost >> useGPUTranslations: aBoolean [

	"Enable or disable GPU translations. GPU translations are faster than doing
the translation in JavaScript.
This option may cause rendering issues with certain datasets.
Namely, if your dataset has large numbers with small increments (such as
timestamps), it won´t work correctly. This is due to floating point
precission.
Defaults to false."

	configurationOptions at: 'useGPUTranslations' put: aBoolean
]

{ #category : #accessing }
HighstockBoost >> usePreallocated: aBoolean [

	"Enable or disable pre-allocation of vertex buffers.
Enabling this will make it so that the binary data arrays required for
storing the series data will be allocated prior to transforming the data
to a WebGL-compatible format.
This saves a copy operation on the order of O(n) and so is significantly more
performant. However, this is currently an experimental option, and may cause
visual artifacts with some datasets.
As such, care should be taken when using this setting to make sure that
it doesn´t cause any rendering glitches with the given use-case.
Defaults to false."

	configurationOptions at: 'usePreallocated' put: aBoolean
]