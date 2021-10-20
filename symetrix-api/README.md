# Symetrix

This extention allows for the snippet recall of Symetrix API's.

Snippet Triggers Include:

## HTTP

```lua
HttpClient.Download {
   Url = "string",
   Headers = {table},
   User = "string",
   Password = "string",
   Timeout = "number",
   EventHandler = "function"}
```

```lua
HttpClient.Upload {
   Url = "string",
   Headers = {"table"},
   User = "string",
   Password = "string",
   Data = "string",
   Method = "string",
   Timeout = "number",
   EventHandler = "function"}
```

```lua
HttpClient.CreateUrl({
   Host = "string",
   Port = "number",
   Path = "string",
   Query = {"table"},
   Enocde = "bool"})
```

```lua
HttpClient.EncodeParams({
   key = "value", ["valid key"] = "valid value"})
```

```lua
HttpClient.EncodeString("string", "bool")
```

```lua
HttpClient.DecodeString("string")
```

### HTTP Framework

```lua
function Response(Table, ReturnCode, Data, Error, Headers)

   if debug then
      print(Data),
      print(Table),
      print(ReturnCode),
      print(Error),
      print(Headers),
   end
end

function Http_Request()

   Url = (HttpClient.CreateUrl({
      Host = "",
      Path = ""}))

   HttpClient.Upload({
      Url = Url,
      Headers = {""},
      Data = "",
      Method = "POST",
      EventHandler = Response})

   HttpClient.Download {
      Url = Url,
      Headers = {""},
      EventHandler = Response}
end
```

## TCP

```lua
MyTcp = TcpSocket.New()
```

```lua
TcpSocketName.EventHandler(TcpSocket, event, error)
```

```lua
TcpSocketName.ReconnectTimeout
```

```lua
TcpSocketName.IsConnected
```

```lua
TcpSocketName.BufferLength
```

```lua
TcpSocketName:Connect(ip, port)
```

```lua
TcpSocketName:Disconnect()
```

```lua
TcpSocketName:Write(data)
```

```lua
TcpSocketName:Read(length)
```

```lua
TcpSocketName:ReadLine(EOL, [delimiter])
```

```lua
TcpSocketName:Search(pattern, [start])
```

```lua
sock = TcpSocket.New()
```

### TCP Framework

```lua
sock.ReadTimeout = 0
sock.WriteTimeout = 0
sock.ReconnectTimeout = 0

sock.Connected = function(TcpSocket)
   print("socket connected\r")
end

sock.Reconnect = function(TcpSocket)
   print("socket reconnecting...\r")
end

sock.Data = function(TcpSocket, data)

rxLine = sock:Read(10000)
   if (nil ~= rxLine) then
      print("Got:\r" .. rxLine)
   end
end

sock.Closed = function(TcpSocket)
   print("socket closed by remote\r")
end

sock.Error = function(TcpSocket, error)
   print(string.format("Error: '%s'\r", error))
end

sock.Timeout = function(TcpSocket, error)
   print("socket closed due to timeout\r")
end

sock:Connect(remoteControlIp, remoteControlPort)
```

## UDP

```lua
MyUdp = UdpSocket.New()
```

```lua
UdpSocketName:Open(ip, port)
```

```lua
UdpSocketName:Close()
```

```lua
UdpSocketName:Send(ip, port, data)
```

```lua
UdpSocketName:GetSockName()
```

### UDP Framework

```lua
function HandleData(socket, packet)
    print("Socket ID: " .. socket.ID)
    receivedIP, receivedPort = socket:GetSockName()
    print("Socket IP: " .. receivedIP)
    print("Socket Port: " .. receivedPort)
    print("Packet IP: " .. packet.Address)
    print("Packet Port: " .. packet.Port)
    print("Packet Data: \r" .. packet.Data)
end

MyUdp = UdpSocket.New()
MyUdp:Open(Device.LocalUnit.ControlIP, 0)
MyUdp.Data = HandleData
MyUdp:Send("0.0.0.0", 48630, "CS 1 0\r\n")
```

## Timer

```lua
function TimerClick()

end

MyTimer = Timer.New()
MyTimer.EventHandler = TimerClick
MyTimer:Start(.5)
```

## JSON

```lua
json.encode(object)
```

```lua
json.decode(jsonString, startPos)
```

```lua
json.null()
```

## NamedControl

```lua
NamedControl.GetText(name)
```

```lua
NamedControl.SetText(name, value)
```

```lua
NamedControl.GetValue(name)
```

```lua
NamedControl.SetValue(name, value)
```

```lua
NamedControl.GetPosition(name)
```

```lua
NamedControl.SetPosition(name, position)
```

## Controls

```lua
Controls.Inputs[input].Value
```

```lua
Controls.Inputs[input].EventHandler
```

```lua
Controls.Outputs[output].Value
```

## Device

```lua
Device.Offline
```

```lua
Device.LocalUnit.ControlIP
```

```lua
Device.LocalUnit.AudioIP
```

```lua
Device.LocalUnit.Name
```

```lua
Device.LocalUnit.Type
```

```lua
Device.LocalUnit.TypeName
```

```lua
Device.RemoteUnit.IP
```

```lua
Device.RemoteUnit.Name
```

```lua
Device.RemoteUnit.Type
```

```lua
Device.RemoteUnit.TypeName
```

```lua
Device.RemoteUnit.DanteIP
```

```lua
Device.RemoteUnit.DanteMAC
```

```lua
Device.RemoteUnit.DanteName
```

```lua
Device.RemoteUnit.DanteModel
```

```lua
Device.RemoteUnit.DanteMfg
```

Born out of a recording studio in 1976, Symetrix was created to make tools that deliver brilliant audio quality. As the AV industry has grown and changed, so have we. Longtime fans of Symetrix, Mark and Rachelle Graham joined the Symetrix team in 2019 as owners, kicking off the next chapter in Symetrix’s 40+ year history. Their dream of working in an audio/video tech business with their family has become a delightful reality. Symetrix continues to enable inspirational AV experiences while serving our unique mission to be a force for good in the world.
