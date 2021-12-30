from mcstatus import MinecraftServer

host = '20.47.116.84'
port = 25565

server = MinecraftServer(host, port)
status = server.status()
print(f'Players: {status.players.online} - {status.latency} ms')

# 'query' has to be enabled in a servers' server.properties file.
# It may give more information than a ping, such as a full player list or mod information.
# query = server.query()
# print(f'The server has the following players online: {", ".join(query.players.names)}')
