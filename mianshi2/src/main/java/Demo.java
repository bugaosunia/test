import com.sun.scenario.effect.impl.state.LinearConvolveRenderState;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Demo {
    public static void main(String[] args) {
        List<Integer> list=new ArrayList();
        for(int i=1;i<=500000;i++){
            list.add(i);
        }
        Demo demo=new Demo();
        demo.outputInfo(list);
    }
    public void outputInfo(List<Integer> list){
        Random random=new Random();
        for (int j=0;j<100000;j++){
            System.out.println(list.get(random.nextInt(500000)));
        }
    }
}
