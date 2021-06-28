{-Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
                       1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms. -}
 
fibonacciSeq = 1 : 2 : zipWith (+) fibonacciSeq (tail fibonacciSeq)
even_fib = [x | x <- takeWhile (<=4000000) fibonacciSeq, even x] 
main = do
    print (sum even_fib)
   

-- takeWhile, stops and terminates its output list as soon as it reaches an element that fails the condition --
-- whereas filter does not, **** DO NOT APPLY FILTER TO INFINITE LIST **** --
