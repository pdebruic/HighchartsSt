"
Options for the export related buttons, print and export. In addition
to the default buttons listed here, custom buttons can be added.
See navigation.buttonOptions for general
options.
"
Class {
	#name : #HighchartsExportingButtons,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsExportingButtons >> contextButton [

	"Options for the export button.
In styled mode, export button styles can be applied with the
.highcharts-contextbutton class.
"
	^configurationOptions at: 'contextButton' ifAbsentPut: [HighchartsExportingButtonsContextButton new]
]