function insertionsort(A)
    local elemento
    for j=1,#A do
        elemento = A[j]
        i = j - 1
        while((i >= 1) and (A[i] > elemento)) do
            A[i+1] = A[i]
            A[i] = elemento
            i = i - 1
        end
    end
end

-- Programa INSERTION_SORT (A[], tamanho)
-- var i, j, elemento;
              
--       PARA j = 0 ATÉ tamanho - 1 FAÇA
--                 elemento = A[j];
--                 i = j – 1;
               
--            ENQUANTO ((i >= 0) e (A[i] > elemento)) FAÇA
--                         A[i+1] = A[i]
--                         A[i] = elemento
--                         i = i–1
--            FIM_ENQUANTO              
--       FIM_PARA
-- FIM

A = {}
for i=1,10 do
    A[i] = math.random(99)
end

function printNumbers(A)
    io.write(string.format("["))
    for i=1,#A do
        io.write(string.format("%i ", A[i]))
    end
    io.write(string.format("] \n"))
end


printNumbers(A)
-- A.length == #A

insertionsort(A)

printNumbers(A)