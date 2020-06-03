local selectionlib = {}

function selectionlib.selectionsort(A)
    local indice_min = 1
    for i=1, #A do
        indice_min = i
        for j=i+1, #A do
            if (A[j] < A[indice_min]) then
                indice_min = j
            end
        end
        A[i], A[indice_min] = A[indice_min], A[i] -- troca
    end
end

return selectionlib

-- programa selectionSort(a[],tamanho:inteiro) 
--     var i, j, indice_min: inteiro 
--     i := 0; 
--     para i até tamanho-1 faça
--        indice_min:= i; 
--        para j de i+1 até j = tamanho-1 faça
--             se a[j] < a[indice_min] 
-- 			indice_min:= j; 
-- 		j++
--        fim_para; 
--        i++; 
--        troca(a[i], a[indice_min]);
--     fim_para;

-- A = {}
-- for i=1,10 do
--     A[i] = math.random(99)
-- end

-- function printNumbers(A)
--     io.write(string.format("["))
--     for i=1,#A do
--         io.write(string.format("%i ", A[i]))
--     end
--     io.write(string.format("] \n"))
-- end


-- printNumbers(A)
-- -- A.length == #A

-- selectionsort(A, 1, #A)

-- printNumbers(A)

-- -- a ne t ta falha  nd  oo

