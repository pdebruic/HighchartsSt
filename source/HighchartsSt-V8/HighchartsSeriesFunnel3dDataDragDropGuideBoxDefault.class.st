"
Style options for the guide box default state.
"
Class {
	#name : #HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault >> className: aString [

	"CSS class name of the guide box in this state. Defaults to
highcharts-drag-box-default.
Defaults to highcharts-drag-box-default."

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault >> color: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"Guide box fill color.
Defaults to rgba(0, 0, 0, 0.1)."

	configurationOptions at: 'color' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault >> cursor: aString [

	"Guide box cursor.
Defaults to move."

	configurationOptions at: 'cursor' put: aString
]

{ #category : #accessing }
HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault >> lineColor: aHighchartsColorString [

	"Color of the border around the guide box.
Defaults to #888."

	configurationOptions at: 'lineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault >> lineWidth: aNumber [

	"Width of the line around the guide box.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesFunnel3dDataDragDropGuideBoxDefault >> zIndex: aNumber [

	"Guide box zIndex.
Defaults to 900."

	configurationOptions at: 'zIndex' put: aNumber
]