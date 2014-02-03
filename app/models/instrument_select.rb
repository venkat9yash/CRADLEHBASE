class InstrumentSelect
  # < ActiveRecord::Base
  # attr_accessible :title, :body 
  def initialize
    @conn = OkHbase::Connection.new(host: '129.22.143.89', port: 9090, auto_connect: true)
    @table = OkHbase::Table.new('Sunfarm', @conn)
    @result = nil
  end
  def singleInstrumentSelect(instrument,time1,time2)
     @result = nil
    if(time1 && time2)
      @result = @table.scan(start_row: time1, stop_row: time2, columns: ["Enphase"], filter_String:"MultipleColumnPrefixFilter('Inv1')")
    end  
  end
  def multiInstrumentSelect(instruments,time1,time2)
    
  end
  def singleInstrumentFromDataSourceSelect(instrument,dataSource,time1,time2)
    
  end
  def multiInstrumentFromMultiDataSourceSelect(instruments,dataSources,time1,time2)
    
  end
end
