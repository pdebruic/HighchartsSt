"
For series on a datetime axes, the date format in the tooltip´s
header will by default be guessed based on the closest data points.
This member gives the default string representations used for
each unit. For an overview of the replacement codes, see dateFormat.
Defaults to:
{
    millisecond:'A, b e, H:M:S.L',
    second:'A, b e, H:M:S',
    minute:'A, b e, H:M',
    hour:'A, b e, H:M',
    day:'A, b e, Y',
    week:'Week from A, b e, Y',
    month:'B Y',
    year:'Y'
}
"
Class {
	#name : #HighstockSeriesWindbarbTooltipDateTimeLabelFormats,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> day: aString [


	configurationOptions at: 'day' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> hour: aString [


	configurationOptions at: 'hour' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> millisecond: aString [


	configurationOptions at: 'millisecond' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> minute: aString [


	configurationOptions at: 'minute' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> month: aString [


	configurationOptions at: 'month' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> second: aString [


	configurationOptions at: 'second' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> week: aString [


	configurationOptions at: 'week' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbTooltipDateTimeLabelFormats >> year: aString [


	configurationOptions at: 'year' put: aString
]
