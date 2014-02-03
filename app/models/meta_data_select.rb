class MetaDataSelect
  #basic function to return all the table names
  def initialize
    @conn = OkHbase::Connection.new(host: '129.22.143.89', port: 9090, auto_connect: true)
    @attrTable = OkHbase::Table.new('Information', @conn)
    @result = nil
  end  
  def getDataSources
    # Something i need to implement
  end
  def getDataSourceModules(dataaSource)
    @attrTable = OkHbase::Table.new('Information', @conn)
    @result = @attrTable.row(dataSource)
    count = 0
    tempKey = ""
    @resultArray = Array.new
    @result.each do |key, value|
      if(tempKey != key[key.index(':')+1...key.index('_')])
        moduleId = key[key.index(':')+1...key.index('_')]
        @resultArray[count] =  moduleId
        tempKey = moduleId
      end
      	count += 1      
    end
    return @resultArray
  end
  def getDataSourceAttributes(dataSource)
    @attrTable = OkHbase::Table.new('Information', @conn)
    @result = @attrTable.row(dataSource)
    tempKey = ""
    column = 0
    @twoDArray = Hash.new{|h, k| h[k] = []}
    @result.each do |key, value|
    #puts key.match(/:[a-z][A-Z]_/)[0].to_s
      if(tempKey != key[key.index(':')+1...key.index('_')])
        moduleId = key[key.index(':')+1...key.index('_')]
        column = 0
        @twoDArray[moduleId][column] = value
        tempKey = moduleId
      else
        @twoDArray[tempKey][column] = value
      end
      	column += 1
    end
    return @twoDArray
    end

end
