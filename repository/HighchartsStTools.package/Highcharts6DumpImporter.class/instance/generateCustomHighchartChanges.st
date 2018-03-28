private - custom changes
generateCustomHighchartChanges

	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartInitializeSourceCode
		for: 'initialize'.
	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartConfigureIdSourceCode
		for: 'id'.
	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartSeriesSourceCode
		for: 'series'.
	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartAddSeriesOfSourceCode
		for: 'addSeriesOf:'.
	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartYAxisSourceCode
		for: 'yAxis'.
	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartYAxisSetterSourceCode
		for: 'yAxis:'.
	self
		generateCustomMethodChangeIn: 'Highchart'
		with: self highchartAddYAxisSourceCode
		for: 'addYAxis'