"
Rotation options for the words in the wordcloud.
"
Class {
	#name : #HighchartsPlotOptionsWordcloudRotation,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsPlotOptionsWordcloudRotation >> from: aNumber [

	"The smallest degree of rotation for a word.
Defaults to 0."

	configurationOptions at: 'from' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsWordcloudRotation >> orientations: aNumber [

	"The number of possible orientations for a word, within the range of
rotation.from and rotation.to.
Defaults to 2."

	configurationOptions at: 'orientations' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsWordcloudRotation >> to: aNumber [

	"The largest degree of rotation for a word.
Defaults to 90."

	configurationOptions at: 'to' put: aNumber
]
