"
Style options for the guide box. The guide box has one state by default, the
default state.
"
Class {
	#name : #HighstockPlotOptionsColumnpyramidDragDropGuideBox,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsColumnpyramidDragDropGuideBox >> default [

	"Style options for the guide box default state.
"
	^configurationOptions at: 'default' ifAbsentPut: [HighstockPlotOptionsColumnpyramidDragDropGuideBoxDefault new]
]