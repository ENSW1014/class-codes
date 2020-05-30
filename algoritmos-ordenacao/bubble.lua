
-- function troca()
    
-- end

function bubblesort(A)
    -- local aux;
    for i=1, #A do
        for j=1, (#A-1) do 
            if(A[j] > A[j+1]) then 
                -- aux = A[j]
                -- A[j] = A[j+1]
                -- A[j+1] = aux
                A[j], A[j+1] = A[j+1], A[j]
            end
        end
    end
end


A = {}
for i=1,10 do
    A[i] = math.random(10)
end

function printNumbers(A)
    io.write(string.format("["))
    for i=1,#A do
        io.write(string.format("%i ", A[i]))
    end
    io.write(string.format("] \n"))
end


printNumbers(A)

bubblesort(A)

printNumbers(A)

-- Programa bubbleSort(A, uma lista de itens ordenáveis)
-- Para i = 1 até tamanho( A ) faça:
--     Para j = 1 até tamanho( A ) faça:
--         Se A[ j ] > A[ j - 1 ] então
--             Trocar( A[ j ], A[ j - 1 ] )
--         Fim se
--     Fim para
-- Fim para
