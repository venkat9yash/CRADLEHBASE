class InterfaceController < ApplicationController
  def index
    @sample = TimeSeriesSelect.new
    @sample1 = InstrumentSelect.new
  #  @output = @sample.timeSeriesSingleDataSource('2013-08-29 13:00:00','2013-08-29 13:30:00','Solectria')
  sampleArray = ["Solectria"]
  sampleAttribute = ['Inv1_AC_Current','Inv2_AC_Power']
 # @output = @sample.timeSeriesMultipleDataSource('2013-08-29 13:00:00','2013-08-29 13:30:00',sampleArray)
 @output = @sample.timeSeriesSingleSourceMultipleAttributes('2013-08-29 13:00:00','2013-08-29 13:30:00',sampleArray,sampleAttribute)
 #@output = @sample1.singleInstrumentSelect('Inv1','2013-08-29 13:00:00','2013-08-29 13:30:00')
 #puts @output
# @sample1 = MetaDataSelect.new
 #@output2 = @sample1.getDataSourceAttributes("Solectria")
# @output2 = @sample1.getDataSourceModules("Solectria")
 #   puts @output2
  end
end
