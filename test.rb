def workingCapital(curAssets, curLiabilities)
	workCapRatio = curAssets/curLiabilities
	return workCapRatio
end

def acidTest(curAssets, inventories, curLiabilities)
	quickRatio = (curAssets - inventories)/curLiabilities
	return quickRatio

end

def acidTestTwo(cash, accountRec, shortInvest, curLiabilities)
	quickRatio = (cash + accountRec + shortInvest)/curLiabilities
	return quickRatio

end

def earningsPerShare(netIncome, dividendsOnPreferred,avgOutShares)
	eps = (netIncome - dividendsOnPreferred)/avgOutShares
	return eps 
end 

def PriceEarningsRatio(netIncome, dividendsOnPreferred,avgOutShares,shareMarketValue)
	eps = (netIncome - dividendsOnPreferred)/avgOutShares
	PEratio = shareMarketValue/eps 
	return PEratio


end 

def debtEquity(totLiabilities,shareholdersEquity)

	debtEquityRatio = totLiabilities/shareholdersEquity
	return debtEquityRatio

end 