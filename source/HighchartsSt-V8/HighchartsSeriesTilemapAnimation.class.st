"
Animation is disabled by default on the heatmap series.
"
Class {
	#name : #HighchartsSeriesTilemapAnimation,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesTilemapAnimation >> duration: aNumber [


	configurationOptions at: 'duration' put: aNumber
]