package src;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    
    @Test 
    public void testSeCriaVetorComTamanhoCorreto() {
        Vetor v = new Vetor(); //[0]
        assertEquals(0, v.tamanho());
    }

    @Test
    public void adicionaUmElemento(){
        Vetor v = new Vetor();
        v.adicionar(1);
        assertEquals(1, v.tamanho());

    }

    @Test
    public void adicionaDoisElementos(){        
        Vetor v = new Vetor();
        v.adicionar(1);
        assertEquals(1, v.tamanho());
        v.adicionar(2);
        assertEquals(2, v.tamanho());
    }

    @Test
    public void adicionarVariosElementos(){
        Vetor v = new Vetor();
        for(int i = 0; i < 10; i++){
            v.adicionar(i);
        }
        assertEquals(10, v.tamanho());
    }


}
