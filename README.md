# Vagrant RabbitMQ box
  
Ubuntu xenial 64 (16.04.02 64 bits) running a [RabbitMQ](http://www.rabbitmq.com/) server

## Dependencies

[Vagrant](http://www.vagrantup.com/)  
  
## How to use

Clone and run vagrant. First run will install everything

```bash
$ git clone https://github.com/pichierri/vagrant-rabbitmq.git
$ vagrant up
```

connect to it (the box IP and ports are hardcoded in Vagrantfile, change as you wish)

- Port to connect: `15672`
- Username: `vagrant`
- Password: `vagrant`
