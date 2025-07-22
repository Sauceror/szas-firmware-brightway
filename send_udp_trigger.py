import socket

UDP_IP = "192.168.0.62"   # Device IP
UDP_PORT = 10010          # As per protocol

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.sendto(b"TRIGGER", (UDP_IP, UDP_PORT))
print("✅ UDP trigger sent")
