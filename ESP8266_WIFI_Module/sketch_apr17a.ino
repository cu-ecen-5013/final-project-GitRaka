#include <ESP8266WiFi.h>

WiFiServer server(80); //Initialize the server on Port 80

void setup() 
{

  WiFi.mode(WIFI_AP); 
  WiFi.softAP("IOT_WIFI", "12345678"); // Providing the SSID and password)
  server.begin(); // Starting HTTP Server
  
  Serial.begin(115200); //Start communication between the ESP8266-12E and the monitor window
  IPAddress HTTPS_ServerIP= WiFi.softAPIP(); // Obtain the IP of the Server
  Serial.print("Server IP is: "); // Print the IP to the monitor window
  Serial.println(HTTPS_ServerIP);
  
  pinMode(LED_BUILTIN, OUTPUT); //GPIO16 is an OUTPUT pin;
  digitalWrite(LED_BUILTIN, LOW); //Initial state is ON

}

void loop() 
{ 
  WiFiClient client = server.available();
  if (!client) 
  {
    return;
  }
  
  Serial.println("Someone connected!!");
  
  //Read what the browser sent 
  
  String request = client.readString();
  Serial.println(request);
  
  // Handle the Request
  if (request.indexOf("/OFF") != -1)
  {
    digitalWrite(LED_BUILTIN, HIGH); 
  }
  else if (request.indexOf("/ON") != -1)
  {
    digitalWrite(LED_BUILTIN, LOW);
  } 
  
}
