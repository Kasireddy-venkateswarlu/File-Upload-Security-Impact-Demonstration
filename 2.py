import socket

# Server configuration
HOST = '192.168.31.218'  # Your server's IP address
PORT = 1246  # Replace with the desired port number

# Create a socket and bind it to the specified host and port
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_socket.bind((HOST, PORT))

# Listen for incoming connections
server_socket.listen(1)
print(f"Listening on {HOST}:{PORT}...")

# Accept a client connection
client_socket, client_address = server_socket.accept()
print(f"Connected to client: {client_address}")

# Receive the directory listing data from the client
data = client_socket.recv(4096).decode('utf-8')
print("Received data:")
print(data)

# Close the client socket
client_socket.close()

# Close the server socket
server_socket.close()
