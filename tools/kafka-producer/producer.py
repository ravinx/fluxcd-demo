from confluent_kafka import Producer
import socket
import time
import random

# Function to create a unique client ID
def create_client_id():
    return f"producer_{socket.gethostname()}_{random.randint(0, 10000)}"

# Kafka configuration for PLAINTEXT communication
kafka_config = {
    'bootstrap.servers': '127.0.0.1:19092',  # Replace with your Kafka proxy address and port
    'client.id': create_client_id(),
    'default.topic.config': {'api.version.request': True},
    'security.protocol': 'PLAINTEXT',  # No encryption or SSL
}

# Topic to send messages to
topic = "test-topic"  # Replace with your topic name

# Create a Kafka producer with the given configuration
producer = Producer(kafka_config)

# Function to handle delivery report (success or error)
def delivery_report(err, msg):
    if err is not None:
        print(f"Message delivery failed: {err}")
    else:
        print(f"Message delivered to {msg.topic()} [{msg.partition()}] at offset {msg.offset()}")

# Sending some test messages
for i in range(10):
    # Construct the message to be sent
    message = f"Test message {i} at {time.strftime('%Y-%m-%d %H:%M:%S')}"

    # Send the message asynchronously
    producer.produce(topic, message.encode('utf-8'), callback=delivery_report)

    # Poll for events and call the callback
    producer.poll(0)

# Flush all messages and ensure delivery before exiting
producer.flush()
