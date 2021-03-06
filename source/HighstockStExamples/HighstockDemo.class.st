Class {
	#name : #HighstockDemo,
	#superclass : #WAComponent,
	#category : 'HighstockStExamples'
}

{ #category : #'as yet unclassified' }
HighstockDemo class >> initialize [
	self register
]

{ #category : #'tools registry' }
HighstockDemo class >> register [

	| app |

	app := WAAdmin register: self asApplicationAt: 'HighstockDemo'.
	app
		addLibrary: JQDevelopmentLibrary;
		addLibrary: Highstock6DevelopmentMetadataLibrary
]

{ #category : #rendering }
HighstockDemo >> addAppleOHLCSeriesInto: chart [

	(chart addSeriesOf: HighstockSeriesCandlestick)
		index: 1;
		"series 0 is the navigator i think"
			name: 'Apple OHLC';
		data: (self getHighchartsAdaptedOHLCFor: 'AAPL')
]

{ #category : #rendering }
HighstockDemo >> getHighchartsAdaptedOHLCFor: aTicker [
	| client originalString result string stream |
	client := ZnClient new
		url: 'https://www.highcharts.com/samples/data/jsonp.php?a=e&filename=', aTicker, '-ohlc.json';
		yourself.
	client get.
	originalString := client contents.
	string :=  (originalString copyAfter: Character lf ) copyUpTo: $).
	stream := String new writeStream.
	string linesDo: [ :aLine | (aLine trimmed beginsWith: '/*') ifFalse: [ stream nextPutAll: aLine  ]  ].
	result := STON fromString: stream contents.
	^ result
]

{ #category : #accessing }
HighstockDemo >> goldClosingPriceSeries [

	| data |

	data := OrderedCollection new
		add: (ChartDatum belongingTo: (Date fromString: '12/18/2013') asMillisecondsSince1970 withValue: 1218.23);
		add: (ChartDatum belongingTo: (Date fromString: '12/19/2013') asMillisecondsSince1970 withValue: 1187.76);
		add: (ChartDatum belongingTo: (Date fromString: '12/20/2013') asMillisecondsSince1970 withValue: 1202.09);
		yourself.
	^ ChartSeries
		named: 'Close'
		composedOf: data
		creatingChartSeriesWith: #addLineSeries
		configuredUsing: [ :aHighchartSeries |  ]
]

{ #category : #accessing }
HighstockDemo >> goldHighestPriceSeries [

	| data |

	data := OrderedCollection new
		add: (ChartDatum belongingTo: (Date fromString: '12/18/2013') asMillisecondsSince1970 withValue: 1244.46);
		add: (ChartDatum belongingTo: (Date fromString: '12/19/2013') asMillisecondsSince1970 withValue: 1226.38);
		add: (ChartDatum belongingTo: (Date fromString: '12/20/2013') asMillisecondsSince1970 withValue: 1207.37);
		yourself.
	^ ChartSeries
		named: 'High'
		composedOf: data
		creatingChartSeriesWith: #addLineSeries
		configuredUsing: [ :aHighchartSeries |  ]
]

{ #category : #accessing }
HighstockDemo >> goldLowestPriceSeries [

	| data |

	data := OrderedCollection new
		add: (ChartDatum belongingTo: (Date fromString: '12/18/2013') asMillisecondsSince1970 withValue: 1216.24);
		add: (ChartDatum belongingTo: (Date fromString: '12/19/2013') asMillisecondsSince1970 withValue: 1187.18);
		add: (ChartDatum belongingTo: (Date fromString: '12/20/2013') asMillisecondsSince1970 withValue: 1191.35);
		yourself.
	^ ChartSeries
		named: 'Low'
		composedOf: data
		creatingChartSeriesWith: #addLineSeries
		configuredUsing: [ :aHighchartSeries |  ]
]

{ #category : #accessing }
HighstockDemo >> goldOpeningPriceSeries [

	| data |

	data := OrderedCollection new
		add: (ChartDatum belongingTo: (Date fromString: '12/18/2013') asMillisecondsSince1970 withValue: 1233.7);
		add: (ChartDatum belongingTo: (Date fromString: '12/19/2013') asMillisecondsSince1970 withValue: 1224.77);
		add: (ChartDatum belongingTo: (Date fromString: '12/20/2013') asMillisecondsSince1970 withValue: 1193.18);
		yourself.
	^ ChartSeries
		named: 'Open'
		composedOf: data
		creatingChartSeriesWith: #addLineSeries
		configuredUsing: [ :aHighchartSeries |  ]
]

{ #category : #accessing }
HighstockDemo >> goldPricesSeries [

	^ Array
		with: self goldOpeningPriceSeries
		with: self goldHighestPriceSeries
		with: self goldLowestPriceSeries
		with: self goldClosingPriceSeries
		
]

{ #category : #rendering }
HighstockDemo >> renderAppleOHLCCandleStickOn: html [

	| chart |

	html text: 'chart: '.
	chart := html highcharts newStockChart.
	chart id: 'container'.
	chart addYAxis title text: 'Price'.
	chart title text: 'AAPL Stock Price'.
	chart xAxis title text: nil.
	chart xAxis labels rotation: nil.
	chart chart width: 922.
	chart chart backgroundColor: '#fff'.
	chart legend x: 10.
	chart exporting enabled: false.
	
"	chart scrollbar liveRedraw: false.
	chart rangeSelector inputEnabled: true. 
	chart navigator adaptToUpdatedData: false."
	
	self addAppleOHLCSeriesInto: chart.


	html div script: chart.
]

{ #category : #rendering }
HighstockDemo >> renderContentOn: html [

	html div 
		id: 'container';
		with: [ 
			self renderPricePerTroyOunce: html.
			self renderAppleOHLCCandleStickOn: html.]
]

{ #category : #rendering }
HighstockDemo >> renderPricePerTroyOunce: aCanvas [

	| chart allSeries |

	allSeries := self goldPricesSeries.
	aCanvas text: 'chart: '.
	chart := aCanvas highcharts newStockChart.
	chart id: 'container'.
	chart addYAxis title text: 'Price Per Troy Ounce'.
	chart title text: '30 DAY GOLD PRICE CHART'.
	chart subtitle text: 'www.gold-feed.com'.
	chart xAxis title text: nil.
	chart xAxis labels rotation: nil.
	chart chart width: 922.
	chart chart backgroundColor: '#fff'.
	chart chart type: 'line'.
	chart credits href: 'http://www.gold-feed.com'.
	chart credits text: 'Gold Feed Inc.'.
	chart legend x: 10.
	chart exporting enabled: false.
	chart scrollbar liveRedraw: false.
	chart rangeSelector inputEnabled: true.	"maybe true?"
	chart navigator adaptToUpdatedData: false.

	allSeries
		doWithIndex: [ :series :index | 
			(chart addSeriesOf: HighchartsSeriesLine)
				index: index - 1;
				name: series name;
				data: (series dataAsPointsOn: aCanvas) ].

	aCanvas div script: chart
]
