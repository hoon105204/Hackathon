import socket


class Server:
    def __init__(self):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.connection, _ = self.sock.accept()

    def connect(self, host='localhost', port='9999'):
        self.sock.bind((host, port))
        self.sock.listen()

    def send(self, data):
        self.sock.send(data)

    def receive(self):
        data = self.connection.recv(1024)
        if data:
            self.connection.sendall(data)
        else:
            return False

        return data

    def close(self):
        self.sock.close()
        self.connection.close()


class Client:
    def __init__(self):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def connect(self, host='localhost', port='9999'):
        self.sock.connect((host, port))

    def send(self, data):
        self.sock.sendall(data)

    def receive(self):
        self.sock.recv(1024)

    def close(self):
        self.sock.close()

