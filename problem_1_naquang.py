class Solution:
	def change(self, amount: int, coins: List[int]) -> int:
		# 1 coin check
		if (amount == 0):
			return 1

		if amount < 0:
			return 0

		if not coins and amount >= 1:
			return 0

		dp = [0] * (amount + 1)

		dp[0] = 1 

		for coin in coins:
			for i in range(coin, amount + 1):
				dp[i] = dp[i] + dp[i - coin]
		return dp[amount]
