Class {
	#name : #HighstockSeriesWmaLastVisiblePriceLabelTest,
	#superclass : #TestCase,
	#category : #'HighstockSt-V7-Tests'
}

{ #category : #'tests-accessing' }
HighstockSeriesWmaLastVisiblePriceLabelTest >> testEnabled [

	| component javascript expectedConfiguration |

	component := HighstockSeriesWmaLastVisiblePriceLabel new.
	component enabled: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'enabled' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript
]