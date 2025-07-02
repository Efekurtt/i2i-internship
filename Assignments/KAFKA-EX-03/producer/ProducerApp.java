package producer;

import org.apache.kafka.clients.producer.*;
import org.apache.kafka.common.serialization.StringSerializer;

import java.util.Properties;

public class ProducerApp {
    public static void main(String[] args) {
        String bootstrapServers = "localhost:9092";

        Properties props = new Properties();
        props.setProperty(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG, bootstrapServers);
        props.setProperty(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, StringSerializer.class.getName());
        props.setProperty(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, StringSerializer.class.getName());

        KafkaProducer<String, String> producer = new KafkaProducer<>(props);

        String topic = "student-topic";
        String value = "Student{id=1, name='Efe Ahmet Kurt'}";

        ProducerRecord<String, String> record = new ProducerRecord<>(topic, value);

        producer.send(record);
        producer.flush();
        producer.close();

        System.out.println("Student object sent: " + value);
    }
}
