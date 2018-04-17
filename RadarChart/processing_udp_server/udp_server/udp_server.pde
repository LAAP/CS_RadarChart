/**
 * (./) udp.pde - how to use UDP library as unicast connection
 * (cc) 2006, Cousot stephane for The Atelier Hypermedia
 * (->) http://hypermedia.loeil.org/processing/
 *
 * Create a communication between Processing<->Pure Data @ http://puredata.info/
 * This program also requires to run a small program on Pd to exchange data  
 * (hum!!! for a complete experimentation), you can find the related Pd patch
 * at http://hypermedia.loeil.org/processing/udp.pd
 * 
 * -- note that all Pd input/output messages are completed with the characters 
 * ";\n". Don't refer to this notation for a normal use. --
 */

// import UDP library
import hypermedia.net.*;


UDP udp;  // define the UDP object

/**
 * init
 */
 
 int value = 10;
void setup() {

  // create a new datagram connection on port 6000
  // and wait for incomming message
  udp = new UDP( this, 6000 );
  udp.log( true ); 		// <-- printout the connection activity
  //udp.listen( true );
}

//process events
void draw() {

delay(1000);

SendToClient(value);
value=value+10;

}

void SendToClient(int msg){
    String message  = str(msg);  // the message to send
    String ip       = "localhost";  // the remote IP address
    int port        = 6000;    // the destination port
    
    // formats the message for Pd
    //message = message+";\n";
    // send the message
    udp.send( message, ip, port );
    println("sending data to UDP client -- port 6000 :" + value);
}
