"
Options for annotation´s shapes. Each shape inherits options
from the shapeOptions object. An option from the shapeOptions can be
overwritten by config for a specific shape.
"
Class {
	#name : #HighchartsAnnotationsShapeOptions,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> fill: aColor [

	"The color of the shape´s fill.
Defaults to rgba(0, 0, 0, 0.75)."

	configurationOptions at: 'fill' put: aColor
]

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> height: aNumber [

	"The height of the shape.
"

	configurationOptions at: 'height' put: aNumber
]

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> r: aNumber [

	"The radius of the shape.
Defaults to 0."

	configurationOptions at: 'r' put: aNumber
]

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> stroke: aColor [

	"The color of the shape´s stroke.
Defaults to rgba(0, 0, 0, 0.75)."

	configurationOptions at: 'stroke' put: aColor
]

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> strokeWidth: aNumber [

	"The pixel stroke width of the shape.
Defaults to 1."

	configurationOptions at: 'strokeWidth' put: aNumber
]

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> type: aString [

	"The type of the shape, e.g. circle or rectangle.
Defaults to 'rect'."

	configurationOptions at: 'type' put: aString
]

{ #category : #accessing }
HighchartsAnnotationsShapeOptions >> width: aNumber [

	"The width of the shape.
"

	configurationOptions at: 'width' put: aNumber
]
