as yet unclassified
solidgauge

	"A solidgauge series. If the type option is not specified, it is inherited from chart.type .  For options that apply to multiple series, it is recommended to add them to the pointOptions.series options structure. To apply to all series of this specific type, apply it to plotOptions.solidgauge . "

	^configurationOptions at: 'solidgauge' ifAbsentPut: [HighchartsSeriesSolidgauge new]