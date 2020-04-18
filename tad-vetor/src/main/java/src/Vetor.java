package src;

public class Vetor {

    int items[];
    int ultimaPosicao;
    int posicoesOcupadas;

    /**
     * Construtor do vetor dinâmico.
     */
    Vetor(){
        this.items = new int[5];
    }

    /**
     * Função para adicionar um valor no vetor.
     * 
     * @param _valor valor a ser adicionado no vetor
     */
    // [0,0,0] +1
    // [0,0,0] +y
    // [0,0,0] x2
    // [0,0,0] ^2
    public void adicionar(int _valor){
        if(items[ultimaPosicao] == 0){
            items[ultimaPosicao++] = _valor;
        }else{
            ultimaPosicao++;
            adicionar(_valor);
        }
        posicoesOcupadas++;
    }

    public void remover(int _indice){
        if(_indice >= 0 && _indice < items.length){
            items[_indice] = 0;
            if(_indice < ultimaPosicao){
                ultimaPosicao = _indice;
            }
        }
    }

    /**
     * Função que retorna a quantidade de posições
     * ocupadas no vetor.
     * 
     * @return int posicoesOcupadas
     */
    public int tamanho(){
        return this.posicoesOcupadas;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("[");
        for(int i = 0; i < items.length; i++){
            str.append(items[i] + ",");
        }        
        str.append("]");
        return str.toString();
    }

}