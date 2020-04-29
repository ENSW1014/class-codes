package src;

public class Vetor {

    int items[];
    int ultimaPosicao;
    int posicoesOcupadas;

    /**
     * Construtor do vetor dinâmico.
     */
    Vetor() {
        this.items = new int[5];
    }

    /**
     * Função para adicionar um valor no vetor.
     * 
     * @param _valor valor a ser adicionado no vetor
     */
    // [0,0,0] +1
    // [0,0,0] +5
    // [0,0,0] x2
    // [0,0,0] ^2
    public void adicionar(int _valor) {
        if (items[ultimaPosicao] == 0) {
            items[ultimaPosicao++] = _valor;
        } else {
            ultimaPosicao++;
            adicionar(_valor);
        }
        posicoesOcupadas++;
    }

    public void remover(int _indice) {
        if (_indice >= 0 && _indice < items.length) {
            items[_indice] = 0;
            if (_indice < ultimaPosicao) {
                ultimaPosicao = _indice;
            }
        }
    }

    /**
     * Metodo que retorna um elemento que se encontra no indice
     * 
     * @param _index
     * @return retorna o valor que esta na posicao index
     */
    public int getItem(int _index) {
        return items[_index];
    }

    /**
     * 
     * 
     * @param _value
     * @return
     */

    // [1,2,3,4,5,6,7,8,9] O(n)
    // [1,2,3,4,5,6,7,8,9] O(log(n))
    // [6,7,8,9]
    // [8,9]
    // [8]
    // [1,2,3,4,5,6,7,8,9] O(n/2) -> i[6] = 7
    // 3-4-1-7-0-2-6-5-8 - 7
    // 1-4-3-0-8-2-6-7-5 - 7
    // 7-5-2-4-6-1-8-0-3 - 5
    // 7-6-2-4-5-1-8-0-3 - 2
    public boolean exist(int _value) {
        // percorrer o vetor inteiro, e se encontrar, retorna true;
        for (int i = 0; i < items.length; i++) {
            if (items[i] == _value)
                return true;
        }
        return false;
    }

    /**
     * Função que retorna a quantidade de posições ocupadas no vetor.
     * 
     * @return int posicoesOcupadas
     */
    public int tamanho() {
        return this.posicoesOcupadas;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("[");
        for (int i = 0; i < items.length; i++) {
            str.append(items[i] + ",");
        }
        str.append("]");
        return str.toString();
    }

}