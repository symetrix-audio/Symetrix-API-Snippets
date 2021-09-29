This extention allows for the snippet recall of Symetrix API's.

Snippit Triggers Include:

Timer:

    function TimerClick()

    end

    MyTimer = Timer.New()
    MyTimer.EventHandler = TimerClick
    MyTimer:Start(.5)

---

HTTP:

    HttpClient.Download {
        Url = "string",
        Headers = {table},
        User = "string",
        Password = "string",
        Timeout = "number",
        EventHandler = "function"}

        HttpClient.Upload {
            Url = "string",
            Headers = {"table"},
            User = "string",
            Password = "string",
            Data = "string",
            Method = "string",
            Timeout = "number",
            EventHandler = "function"}

        HttpClient.CreateUrl({
            Host = "string",
            Port = "number",
            Path = "string",
            Query = {"table"},
            Enocde = "bool"})

        HttpClient.EncodeParams({
            key = "value", ["valid key"] = "valid value"})

        HttpClient.EncodeString("string", "bool")

        HttpClient.DecodeString("string")

HTTP Framework:

    function HTTP()

    Url = (HttpClient.CreateUrl({
           Host = "",
           Path = ""}))

    HttpClient.Upload({
        Url = Url,
        Headers =  {""},
        Data = "",
        Method = "POST",
        EventHandler = Response})

    HttpClient.Download {
        Url = Url,
        Headers = { "" },
        EventHandler = Response}

end

---

TCP:

    MyTcp = TcpSocket.New()

    TcpSocketName.EventHandler(TcpSocket, event, error)

    TcpSocketName.ReconnectTimeout

    TcpSocketName.IsConnected

    TcpSocketName.BufferLength

    TcpSocketName:Connect(ip, port)

    TcpSocketName:Disconnect()

    TcpSocketName:Write(data)

    TcpSocketName:Read(length)

    TcpSocketName:ReadLine(EOL, [delimiter])

    TcpSocketName:Search(pattern, [start])

    sock = TcpSocket.New()

TCP Framework:

sock.ReadTimeout = 0
sock.WriteTimeout = 0
sock.ReconnectTimeout = 0

sock.Connected = function(TcpSocket)

    --handle the new Connection
    print("socket connected\r")

end

sock.Reconnect = function(TcpSocket)

    --handle the Reconnection attempt
    print("socket reconnecting...\r")

end

sock.Data = function(TcpSocket, data)

      --handle the data
    rxLine = sock:Read(10000)
        if (nil ~= rxLine) then
            print("Got:\r" .. rxLine)
        end

end

sock.Closed = function(TcpSocket)

    --handle the socket closing
    print("socket closed by remote\r")

end

sock.Error = function(TcpSocket, error)

    --handle the error
    print(string.format("Error: '%s'\r", error))

end

sock.Timeout = function(TcpSocket, error)

    --handle the Timeout
    print("socket closed due to timeout\r")

end

sock:Connect(remoteControlIp, remoteControlPort)

---

UDP:

    MyUdp = UdpSocket.New()

    UdpSocketName:Open(ip, port)

    UdpSocketName:Close()

    UdpSocketName:Send(ip, port, data)

    UdpSocketName:GetSockName()

UDP Framework:

function HandleData(socket, packet)

    --Info about receiving socket and packet
    print("Socket ID: " .. socket.ID)
    receivedIP, receivedPort = socket:GetSockName()
    print("Socket IP: " .. receivedIP)
    print("Socket Port: " .. receivedPort)
    print("Packet IP: " .. packet.Address)
    print("Packet Port: " .. packet.Port)
    --Do stuff with the received packet
    print("Packet Data: \r" .. packet.Data)

end

MyUdp = UdpSocket.New()
MyUdp:Open(Device.LocalUnit.ControlIP, 0)
MyUdp.Data = HandleData
MyUdp:Send("0.0.0.0", 48630, "CS 1 0\r\n")

---

JSON:

    json.encode(object)

    json.decode(jsonString, startPos)

    json.null()

---

NamedControl:

    NamedControl.GetText(name)

    NamedControl.SetText(name, value)

    NamedControl.GetValue(name)

    NamedControl.SetValue(name, value)

    NamedControl.GetPosition(name)

    NamedControl.SetPosition(name, position)

---

Controls:

    Controls.Inputs[input].Value

    Controls.Inputs[input].EventHandler

    Controls.Outputs[output].Value

---

Born out of a recording studio in 1976, Symetrix was created to make tools that deliver brilliant audio quality. As the AV industry has grown and changed, so have we. Longtime fans of Symetrix, Mark and Rachelle Graham joined the Symetrix team in 2019 as owners, kicking off the next chapter in Symetrix’s 40+ year history. Their dream of working in an audio/video tech business with their family has become a delightful reality. Symetrix continues to enable inspirational AV experiences while serving our unique mission to be a force for good in the world.
