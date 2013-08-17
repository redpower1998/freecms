package test.base.cocurrent;

import java.util.concurrent.atomic.AtomicInteger;

public class IDGenerator {
    private final AtomicInteger id = new AtomicInteger(0);

    public IDGenerator() {
    }

    public int nextInt() {
        while (true) {
            int oldID = id.get();
            int newID = oldID + 1;
            if (id.compareAndSet(oldID, newID))
                return newID;
        }
    }

    public int nextInt2() {
        return id.incrementAndGet(); 
    }

    public static void main(String[] args) {
        IDGenerator gen = new IDGenerator();
        System.out.println(gen.nextInt());
        System.out.println(gen.nextInt());
        System.out.println(gen.nextInt());
    }
}