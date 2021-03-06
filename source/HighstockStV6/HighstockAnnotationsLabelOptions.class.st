"
Options for annotation´s labels. Each label inherits options
from the labelOptions object. An option from the labelOptions can be
overwritten by config for a specific label.
"
Class {
	#name : #HighstockAnnotationsLabelOptions,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> align: aString [

	"The alignment of the annotation´s label. If right,
the right side of the label should be touching the point.
Defaults to center."

	configurationOptions at: 'align' put: aString
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> allowOverlap: aBoolean [

	"Whether to allow the annotation´s labels to overlap.
To make the labels less sensitive for overlapping, 
the can be set to 0.
Defaults to false."

	configurationOptions at: 'allowOverlap' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> backgroundColor: aColor [

	"The background color or gradient for the annotation´s label.
Defaults to rgba(0, 0, 0, 0.75)."

	configurationOptions at: 'backgroundColor' put: aColor
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> borderColor: aColor [

	"The border color for the annotation´s label.
Defaults to black."

	configurationOptions at: 'borderColor' put: aColor
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> borderRadius: aNumber [

	"The border radius in pixels for the annotaiton´s label.
Defaults to 1."

	configurationOptions at: 'borderRadius' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> borderWidth: aNumber [

	"The border width in pixels for the annotation´s label
Defaults to 1."

	configurationOptions at: 'borderWidth' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> crop: aBoolean [

	"Whether to hide the annotation´s label that is outside the plot area.
Defaults to false."

	configurationOptions at: 'crop' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> distance: aNumber [

	"The label´s pixel distance from the point.
Defaults to undefined."

	configurationOptions at: 'distance' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> format: aString [

	"A format string for the data label.
Defaults to undefined."

	configurationOptions at: 'format' put: aString
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> formatter: aFunction [

	"Callback JavaScript function to format the annotation´s label. Note that
if a format or text are defined, the format or text take precedence
and the formatter is ignored. This refers to a point object.
Defaults to function () {
	return defined(this.y) ? this.y : 'Annotation label';
}."

	configurationOptions at: 'formatter' put: aFunction
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> overflow: aString [

	"How to handle the annotation´s label that flow outside the plot
area. The justify option aligns the label inside the plot area.
Defaults to justify."

	configurationOptions at: 'overflow' put: aString
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> padding: aNumber [

	"When either the borderWidth or the backgroundColor is set,
this    is the padding within the box.
Defaults to 5."

	configurationOptions at: 'padding' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> shadow: aBooleanOrObject [

	"The shadow of the box. The shadow can be an object configuration
containing color, offsetX, offsetY, opacity and width.
Defaults to false."

	configurationOptions at: 'shadow' put: aBooleanOrObject
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> shape: aString [

	"The name of a symbol to use for the border around the label.
Symbols are predefined functions on the Renderer object.
Defaults to callout."

	configurationOptions at: 'shape' put: aString
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> style [

	"Styles for the annotation´s label.
"
	^configurationOptions at: 'style' ifAbsentPut: [HighstockAnnotationsLabelOptionsStyle new]
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> text: aString [

	"Alias for the format option.
Defaults to undefined."

	configurationOptions at: 'text' put: aString
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> useHTML: aBoolean [

	"Whether to use HTML to render the annotation´s label.
Defaults to false."

	configurationOptions at: 'useHTML' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> verticalAlign: aString [

	"The vertical alignment of the annotation´s label.
Defaults to bottom."

	configurationOptions at: 'verticalAlign' put: aString
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> x: aNumber [

	"The x position offset of the label relative to the point.
Note that if a distance is defined, the distance takes
precedence over x and y options.
Defaults to 0."

	configurationOptions at: 'x' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsLabelOptions >> y: aNumber [

	"The y position offset of the label relative to the point.
Note that if a distance is defined, the distance takes
precedence over x and y options.
Defaults to -16."

	configurationOptions at: 'y' put: aNumber
]
