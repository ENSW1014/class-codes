-- local function pif(pub, name, path)

function mergesort(A, inicio, fim)
    if (inicio < fim) then
        local meio = math.floor((inicio + fim) / 2)
        -- print('inicio %a - meio(%a) - fim %a', inicio, meio, fim)
        io.write(string.format('mergesort(%i, %i, %i) \n', inicio, meio, fim))
        mergesort(A, inicio, meio)
        mergesort(A, meio + 1, fim)
        merge(A, inicio, meio, fim) -- funde os subvetores
    end
end
 
function merge(A, inicio, meio, fim)
    local tamEsq = meio - inicio + 1 -- 02. |   tamEsq ← meio - inicio + 1 //tamanho do subvetor esquerdo
    local tamDir = fim - meio  -- 03. |   tamDir ← fim - meio //tamanho do subvetor direito
    local esquerda = {} -- 04. |   inicializar vetor Esq[0...tamEsq - 1]
    local direita = {} -- 05. |   inicializar vetor Dir[0...tamDir - 1]

    for i=1,tamEsq do  -- 06. |   para i ← 0 até tamEsq - 1
        esquerda[i] = A[inicio+i-1]  -- 07. |   |   Esq[i] ← A[inicio + i] //elementos do subvetor esquerdo
    end  -- 08. |   fim_par 

    for i=1,tamDir do  -- 09. |   para j ← 0 até tamDir - 1
        direita[i] = A[meio+i]   -- 10. |   |   Dir[j] ← A[meio + 1 + j] //elementos do subvetor direito
    end  -- 11. |   fim_para

    local idxEsq = 1   -- 12. |   idxEsq ← 0 //índice do subvetor auxiliar esquerdo
    local idxDir = 1   -- 13. |   idxDir ← 0 //índice do subvetor auxiliar direito

    for k=inicio, fim do  -- 14. |   para k ← inicio até fim
        if(idxEsq < tamEsq + 1) then -- 15. |   |   se(idxEsq < tamEsq)
            if(idxDir < tamDir + 1) then  -- 16. |   |   |   se(idxDir < tamDir)
                if(esquerda[idxEsq] < direita[idxDir]) then -- 17. |   |   |   |   se(Esq[idxEsq] < Dir[idxDir])
                    A[k] = esquerda[idxEsq] -- 18. |   |   |   |   |   A[k] ← Esq[idxEsq]
                    idxEsq = idxEsq + 1 -- 19. |   |   |   |   |   idxEsq ← idxEsq + 1
                else -- 20. |   |   |   |   senão
                    A[k] = direita[idxDir] -- 21. |   |   |   |   |   A[k] ← Dir[idxDir]
                    idxDir = idxDir + 1 -- 22. |   |   |   |   |   idxDir ← idxDir + 1
                end-- 23. |   |   |   |   fim_se
            else -- 24. |   |   |   senão
                A[k] = esquerda[idxEsq]  -- 25. |   |   |   |   A[k] ← Esq[idxEsq]
                idxEsq = idxEsq + 1  -- 26. |   |   |   |   idxEsq ← idxEsq + 1
            end -- 27. |   |   |   fim_se
        else -- 28. |   |   senão
            A[k] = direita[idxDir]  -- 29. |   |   |   A[k] ← Dir[idxDir]
            idxDir = idxDir + 1  -- 30. |   |   |   idxDir ← idxDir + 1
        end-- 31. |   |   fim_se
    end -- 32. |   fim_para

    -- A = [84, 40, 78, 80, 91, 20, 34, 77, 28, 55]
    -- inicio = 1
    -- fim = 10
    -- mergesort(A, 1, 10)
    -- -- 1a chamada
    -- meio = 11/2 = 5
    -- mergesort(A, 1, 5)  -- 2A 
    -- mergesort(A, (5+1), 10) -- 2B
    -- merge(A, inicio, meio, fim)  inicio=1 meio=5 fim=10
        -- tamEsq = meio - inicio + 1; 5 - 1 + 1 = tamEsq => 5
        -- tamDir = fim - meio; 10 - 5 => 5
        -- for i=1, 5
            -- esq[1] = A[inicio+i-1] = A[1+1-1] = A[1] 
            -- esq[2] = A[inicio+i-1] = A[1+2-1] = A[2]
            -- esq[3] = A[inicio+i-1] = A[1+3-1] = A[3]
            -- esq[4] = A[inicio+i-1] = A[1+4-1] = A[4]
            -- esq[5] = A[inicio+i-1] = A[1+5-1] = A[5]

        -- for i=1, 5  
            -- esq[1] = A[meio+i] = A[5+1] = A[6]
            -- esq[2] = A[meio+i] = A[5+2] = A[7]
            -- esq[3] = A[meio+i] = A[5+3] = A[8]
            -- esq[4] = A[meio+i] = A[5+4] = A[9]
            -- esq[5] = A[meio+i] = A[5+5] = A[10]

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

selectionsort(A, 1, #A)

printNumbers(A)
-- 01. mergesort(A[0...n - 1], inicio, fim)
-- 02. |   se(inicio < fim)
-- 03. |   |   meio ← (inicio + fim) / 2 //calcula o meio
-- 04. |   |   mergesort(A, inicio, meio) //ordena o subvetor esquerdo
-- 05. |   |   mergesort(A, meio + 1, fim) //ordena o subvetor direito
-- 06. |   |   merge(A, inicio, meio, fim) //funde os subvetores 
-- 07. |   fim_se
-- 08. fim_mergesort


-- 01. merge(A[0...n - 1], inicio, meio, fim)
-- 02. |   tamEsq ← meio - inicio + 1 //tamanho do subvetor esquerdo
-- 03. |   tamDir ← fim - meio //tamanho do subvetor direito
-- 04. |   inicializar vetor Esq[0...tamEsq - 1]
-- 05. |   inicializar vetor Dir[0...tamDir - 1]
-- 06. |   para i ← 0 até tamEsq - 1
-- 07. |   |   Esq[i] ← A[inicio + i] //elementos do subvetor esquerdo
-- 08. |   fim_para
-- 09. |   para j ← 0 até tamDir - 1
-- 10. |   |   Dir[j] ← A[meio + 1 + j] //elementos do subvetor direito
-- 11. |   fim_para
-- 12. |   idxEsq ← 0 //índice do subvetor auxiliar esquerdo
-- 13. |   idxDir ← 0 //índice do subvetor auxiliar direito
-- 14. |   para k ← inicio até fim
-- 15. |   |   se(idxEsq < tamEsq)
-- 16. |   |   |   se(idxDir < tamDir)
-- 17. |   |   |   |   se(Esq[idxEsq] < Dir[idxDir])
-- 18. |   |   |   |   |   A[k] ← Esq[idxEsq]
-- 19. |   |   |   |   |   idxEsq ← idxEsq + 1
-- 20. |   |   |   |   senão
-- 21. |   |   |   |   |   A[k] ← Dir[idxDir]
-- 22. |   |   |   |   |   idxDir ← idxDir + 1
-- 23. |   |   |   |   fim_se
-- 24. |   |   |   senão
-- 25. |   |   |   |   A[k] ← Esq[idxEsq]
-- 26. |   |   |   |   idxEsq ← idxEsq + 1
-- 27. |   |   |   fim_se
-- 28. |   |   senão
-- 29. |   |   |   A[k] ← Dir[idxDir]
-- 30. |   |   |   idxDir ← idxDir + 1
-- 31. |   |   fim_se
-- 32. |   fim_para
-- 33. fim_merge


-- A = [84, 40, 78, 80, 91, 20, 34, 77, 28, 55]
-- inicio = 1
-- fim = 10
-- mergesort(A, 1, 10)
-- -- 1a chamada
-- meio = 11/2 = 5
-- mergesort(A, 1, 5)  -- 2A 
-- mergesort(A, (5+1), 10) -- 2B

-- -- 2A
-- inicio = 1
-- fim = 5
-- meio = 6/2 = 3
-- mergesort(A, 1, 3) --3A
-- mergesort(A, 4, 5) -- 3B

-- -- 2B
-- inicio = 6
-- fim = 10
-- meio = (6+10)/2 = 8
-- mergesort(A, 6, 8) -- 3C
-- mergesort(A, (8+1), 10) -- 3D

-- -- 3A
-- inicio = 1
-- fim = 3
-- meio = (1+3)/2 = 2
-- mergesort(A, 1, 2) -- 4A
-- mergesor(A, 3, 2) -- 4B 

-- -- 3B
-- inicio = 4
-- fim = 5
-- meio = (4+5)/2 = 4
-- mergesort(A, 4, 4) -- 4C
-- mergesort(A, 5, 5) -- 4D

-- -- 3C
-- inicio = 6
-- fim = 8
-- meio = (6+8)/2 = 7
-- mergesort(A, 6, 7) -- 4E
-- mergesort(A, 8, 8) -- 4F


-- -- 3D
-- inicio = 9
-- fim = 10
-- meio = (9+10)/2 = 9
-- mergesort(A, 9, 9) -- 4G
-- mergesort(A, 10, 10) -- 4H

-- -- 4A
-- inicio = 1
-- fim = 2
-- meio = (1+2)/2 = 1
-- mergesort(A, 1, 1) -- 5A
-- mergesort(A, 2, 2) -- 5B

-- -- 4B
-- inicio = 3
-- fim = 2
-- retorna 

-- -- 4C
-- inicio = 4
-- fim = 4
-- retorna

-- -- 4D
-- inicio = 5
-- fim = 5
-- retorna
