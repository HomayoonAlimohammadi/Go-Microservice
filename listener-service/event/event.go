package event

import (
	amqp "github.com/rabbitmq/amqp091-go"
)

func declareExchange(ch *amqp.Channel) error {

	// read the docs of rabbitmq for these fields
	return ch.ExchangeDeclare(
		"logs_topic", // name
		"topic",      // type
		true,         // is durable
		false,        // is auto deleted
		false,        // is internal
		false,        // no wait?
		nil,          // arguments?
	)
}

func declareRandomQueue(ch *amqp.Channel) (amqp.Queue, error) {
	return ch.QueueDeclare(
		"",    // name
		false, // is durable
		false, // auto delete when unused?
		true,  // is exclusive
		false, // is no-wait?
		nil,   // arguments
	)
}
