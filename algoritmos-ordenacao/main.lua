local mergesort =  "mergesort"

A = {}
for i=1,10 do
    A[i] = math.random(99)
end

printNumbers(A)
-- A.length == #A

mergesort(A, 1, #A)

printNumbers(A)