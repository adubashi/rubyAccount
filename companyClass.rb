class Company 
	def initialize(totalLiabilities=0,totalAssets = 0, curAssets = 0, curLiabilities = 0, cash = 0, accountsReceivable = 0, shortTermInvestments = 0, 
		inventories = 0, netIncome = 0, dividendsOnPrefStock = 0, avgOutstandingShares = 0, marketValuePerShare = 0, shareholdersEquity = 0)
		@totalLiabilities = totalLiabilities
		@totalAssets = totalAssets
		@curAssets = curAssets
		@curLiabilities = curLiabilities
		@cash = cash
		@accountsReceivable = accountsReceivable
		@shortTermInvestments = shortTermInvestments
		@inventories = inventories
		@netIncome = netIncome
		@dividendsOnPrefStock = dividendsOnPrefStock
		@avgOutstandingShares = avgOutstandingShares
		@marketValuePerShare = marketValuePerShare
		@shareholdersEquity = shareholdersEquity
	end 

	 

	def quickRatio
		return (@curAssets/@curLiabilities)
	end 

	def acidTest
		quickRatio = (@cash + @accountsReceivable + @shortTermInvestments)/(@curLiabilities)
		return quickRatio
	end 

	def earningsPerShare
		eps = ((@netIncome - @dividendsOnPrefStock)/@avgOutstandingShares)
		return eps 
	end  

	def PriceEarningsRatio
		return @marketValuePerShare/self.earningsPerShare
	end 

	def debtEquity
		debtEquityRatio = @totLiabilities/@shareholdersEquity
		return debtEquityRatio
	end
end 


a = Company.new(0,2,5,25)

