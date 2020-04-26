# Reference: https://stackoverflow.com/questions/37499739/how-can-i-send-a-image-by-using-mosquitto
# Reference http://www.steves-internet-guide.com/into-mqtt-python-client/
# Rakesh Kumar

import paho.mqtt.publish as publish
MQTT_SERVER = "localhost"
MQTT_PATH = "Image"

f=open("image.jpg", "rb")
fileContent = f.read()
byteArr = bytearray(fileContent)


publish.single(MQTT_PATH, byteArr, hostname=MQTT_SERVER)
