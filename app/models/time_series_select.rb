class TimeSeriesSelect #< ActiveRecord::Base
  
  def initialize
    @conn = OkHbase::Connection.new(host: '129.22.143.89', port: 9090, auto_connect: true)
    @table = OkHbase::Table.new('Sunfarm', @conn)
    @result = nil
  end  
  # Single DataSource Time Search Query
  def timeSeriesSingleDataSource(time1,time2,dataSource)
    @result = nil
    if(time1 && time2 && dataSource)
      @result = @table.scan(start_row: time1, stop_row: time2, columns:[dataSource]) 
    end 
    return @result    
  end
  #function with time parameters and mulitple sources
  def timeSeriesMultipleDataSource(time1,time2,dataSources)
    @result = nil
    if(dataSources != nil)
      sourceList = ""
      dataSources.each do |x|
        if sourceList != ""
          sourceList = sourceList << ","
        end
        sourceList = sourceList << x        
      end
      if(time1 && time2 && sourceList != "")
        @result = @table.scan(start_row: time1, stop_row: time2, columns:dataSources) 
      end       
    end
    return @result
  end
    #function with time parameters and singlesource and mulitple attribute list
  def timeSeriesSingleSourceMultipleAttributes(time1,time2,dataSources,attributes)
    @result = nil
    if attributes != nil
      attrList = "MultipleColumnPrefixFilter("
      attributes.each do |x|
        if attrList != "MultipleColumnPrefixFilter("
          attrList = attrList << ","
        end
        attrList = attrList << "'" << x << "'"
      end
      attrList = attrList << ')"'
      puts attrList
      if(time1 && time2 && dataSources)
        @result = @table.scan(start_row: time1, stop_row: time2, columns:dataSources,filter_String:attrList) 
      end
    end 
    return @result    
  end
  #function will return time parameters with mulitple Inverter or Mod Id
  def timeSeriesMultipleSourceMultipleAttributes(time1,time2,dataSources,inverters)
    @result = nil
    if inverters != nil
      invList = "MultipleColumnPrefixFilter("
      inverters.each do |x|
        if invList != "MultipleColumnPrefixFilter("
          invList = invList << ","
        end
        invList = invList << "'" << x << "'"
      end
      invList = invList << ')"'
      puts invList
      if(time1 && time2 && dataSources)
        @result = @table.scan(start_row: time1, stop_row: time2, columns:dataSources,filter_String:invList) 
      end
    end 
    return @result 
  end
end
