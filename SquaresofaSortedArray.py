class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        num1=[]
        #for i in range(len(nums)):
        #    num1.append(nums[i]**2)
        #num1=sorted(num1)   
        #return num1
        for i in nums:
            num1.append(i**2)
        num1.sort()
        return num1
