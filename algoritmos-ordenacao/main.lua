-- Update the search path
local module_folder = "~/Documents/workspace/unifil/2020/ensw1014/class-codes/algoritmos-ordenacao"
package.path = module_folder .. "?.lua;" .. package.path

-- Load the module
bubblesorter = require "bubble"
mergesorter = require "merge"
insertionsorter = require "insertion"
selectionsorter = require "selection"

function printNumbers(A)
    io.write(string.format("["))
    for i=1,#A do
        io.write(string.format("%i ", A[i]))
    end
    io.write(string.format("] \n"))
end

-- A = {}
-- for i=1,10 do
--     A[i] = math.random(99)
-- end

function generateRandomNumbers(limit, numElements)
    local A = {}
    for i=1,numElements do
        A[i] = math.random(limit)
    end
    return A
end

-- A.length == #A
A = generateRandomNumbers(20, 5)
printNumbers(A)
bubblesorter.bubblesort(A)
printNumbers(A)

B = generateRandomNumbers(30, 7)
printNumbers(B)
insertionsorter.insertionsort(B)
printNumbers(B)

C = generateRandomNumbers(40, 9)
printNumbers(C)
selectionsorter.selectionsort(C)
printNumbers(C)

D = generateRandomNumbers(99, 12)
printNumbers(D)
mergesorter.mergesort(D, 1, #D)
printNumbers(D)
