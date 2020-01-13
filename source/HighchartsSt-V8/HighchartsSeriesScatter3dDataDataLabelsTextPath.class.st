"
Options for a label text which should follow marker´s shape.
Border and background are disabled for a label that follows a
path.
Note: Only SVG-based renderer supports this option. Setting
useHTML to true will disable this option.
"
Class {
	#name : #HighchartsSeriesScatter3dDataDataLabelsTextPath,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesScatter3dDataDataLabelsTextPath >> attributes: aHighchartsSVGAttributes [

	"Presentation attributes for the text path.
"

	configurationOptions at: 'attributes' put: aHighchartsSVGAttributes
]

{ #category : #accessing }
HighchartsSeriesScatter3dDataDataLabelsTextPath >> enabled: aBoolean [

	"Enable or disable textPath option for link´s or marker´s data
labels.
"

	configurationOptions at: 'enabled' put: aBoolean
]