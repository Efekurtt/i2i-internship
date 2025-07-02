import com.hazelcast.core.Hazelcast;
import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.map.IMap;

public class HazelcastExample {
    public static void main(String[] args) {

   
        HazelcastInstance hz = Hazelcast.newHazelcastInstance();

  
        IMap<Integer, Person> personMap = hz.getMap("people");


        for (int i = 0; i < 10000; i++) {
            personMap.put(i, new Person("Person_" + i));
        }

        System.out.println("10,000 Person objects added to Hazelcast map.");


        for (int i = 0; i < 5; i++) {
            System.out.println("From Map: " + personMap.get(i));
        }

        hz.shutdown();
    }
}
