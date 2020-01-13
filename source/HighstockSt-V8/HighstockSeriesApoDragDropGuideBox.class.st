"
Style options for the guide box. The guide box has one state by default, the
default state.
"
Class {
	#name : #HighstockSeriesApoDragDropGuideBox,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesApoDragDropGuideBox >> default [

	"Style options for the guide box default state.
"
	^ configurationOptions at: 'default' ifAbsentPut: [ HighstockSeriesApoDragDropGuideBoxDefault new ]
]