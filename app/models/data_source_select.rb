class DataSourceSelect
  # < ActiveRecord::Base
  # attr_accessible :title, :body
  
    def initialize
    @conn = OkHbase::Connection.new(host: '129.22.143.89', port: 9090, auto_connect: true)
    @table = OkHbase::Table.new('Sunfarm', @conn)
    @result = nil
    end
    def singleDataSourceSelect(dataSource,time1,time2)
    end
    def multiDataSourceSelect(dataSources,time1,time2)
    
    end
    def singleDataSourceFromInstrumentSelect(dataSource,instrument,time1,time2)
    
    end
    def multiDataSourcesFromInstrumentsSelect(dataSources,instruments,time1,time2)
    
    end
  
end
