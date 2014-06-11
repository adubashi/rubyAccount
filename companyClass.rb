class Company 
	
	attr_accessor :totalLiabilities
	attr_accessor :totalAssets
	#Current Assets 
	attr_accessor :cash
	attr_accessor :accountsReceivable
	attr_accessor :shortTermInvestments
	attr_accessor :inventories
	#Current Liabilities 
	attr_accessor :shortTermDebt
	attr_accessor :accountsPayable
	attr_accessor :accruedLiabilities
	#Stock Qualities 
	attr_accessor :netIncome
	attr_accessor :dividendsOnPrefStock
	attr_accessor :avgOutstandingShares
	attr_accessor :marketValuePerShare
	attr_accessor :shareholdersEquity

	def initialize( totalLiabilities = 0, totalAssets = 0, 
					#Current Assets 
					cash = 0, accountsReceivable = 0, shortTermInvestments = 0, inventories = 0, 
					#Current Liabiilities 
					shortTermDebt = 0, accountsPayable = 0, accruedLiabilities = 0
					

					netIncome = 0, 
					dividendsOnPrefStock = 0, avgOutstandingShares = 0, marketValuePerShare = 0, shareholdersEquity = 0)
		@totalLiabilities = totalLiabilities
		@totalAssets = totalAssets
		
		
		#Current Assets
		@cash = cash
		@accountsReceivable = accountsReceivable
		@shortTermInvestments = shortTermInvestments
		@inventories = inventories
		
		#Current Liabilities 
		@shortTermDebt = shortTermDebt
		@accountsPayable = accountsPayable
		@accruedLiabilities = accruedLiabilities


		@netIncome = netIncome
		@dividendsOnPrefStock = dividendsOnPrefStock
		@avgOutstandingShares = avgOutstandingShares
		@marketValuePerShare = marketValuePerShare
		@shareholdersEquity = shareholdersEquity
	end 

	






	def currentAssets
		return @cash + @accountsReceivable + @shortTermInvestments + @inventories
	end 
	 
	def currentLiabilities
		return @shortTermDebt + @accountsPayable + @accruedLiabilities
	end 
 

	def acidTest
		quickRatio = (self.currentAssets/self.currentLiabilities)
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




