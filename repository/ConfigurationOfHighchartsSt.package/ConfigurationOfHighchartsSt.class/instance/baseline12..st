baselines
baseline12: spec
  <version: '1.2-baseline'>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'baseline'.
      spec repository: 'http://smalltalkhub.com/mc/Mercap/HighchartsSt/main'.
      spec
        project: 'Seaside'
          with: [ 
              spec
                className: 'ConfigurationOfSeaside3';
                versionString: #'stable';
                loads: #('Core' 'JQuery');
                repository:
                    'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ];
        project: 'XMLParser'
          with: [ 
              spec
                className: 'ConfigurationOfXMLParser';
                versionString: '1.1';
                loads: #('Core' 'Tests');
                repository:
                    'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main' ].
      spec
        package: 'HighchartsStCore' with: [ spec requires: #('Seaside') ];
        package: 'HighchartsStAutoGenerated'
          with: [ spec requires: #('HighchartsStCore') ];
        package: 'HighstockStAutoGenerated'
          with: [ spec requires: #('HighchartsStAutoGenerated' 'HighchartsStCore') ];
        package: 'HighchartsStExtensions'
          with: [ 
              spec
                requires:
                  #('HighchartsStCore' 'HighchartsStAutoGenerated' 'HighstockStAutoGenerated') ];
        package: 'HighchartsStAutoGeneratedTests'
          with: [ spec requires: #('HighchartsStAutoGenerated') ];
        package: 'HighstockStAutoGeneratedTests'
          with: [ spec requires: #('HighstockStAutoGenerated') ];
        package: 'HighchartsStExamples'
          with: [ spec requires: #('HighchartsStExtensions') ];
        package: 'HighchartsStTools'
          with: [ spec requires: #('HighchartsStCore' 'XMLParser') ].
      spec
        group: 'default' with: #('Development');
        group: 'Core'
          with:
            #('HighchartsStCore' 'HighchartsStAutoGenerated' 'HighstockStAutoGenerated' 'HighchartsStExtensions');
        group: 'Tests' with: #('HighchartsStAutoGeneratedTests');
        group: 'Development' with: #('Core' 'Tests' 'HighchartsStExamples');
        group: 'Tools' with: #('HighchartsStTools') ]