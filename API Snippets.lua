-- Start HTTP --
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
--END HTTP -- 

-- Start TCP -- 
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

    -- TcpSocketName.Connected(TcpSocket)

    -- TcpSocketName.Reconnect(TcpSocket)

    -- TcpSocketName.Data(TcpSocket, data)

    -- TcpSocketName.Closed(TcpSocket)

    -- TcpSocketName.Error(TcpSocket, error)

    -- TcpSocketName.Timeout(TcpSocket, error)
-- END TCP --

--Start UDP --
MyUdp = UdpSocket.New()

UdpSocketName:Open(ip, port)

UdpSocketName:Close()

UdpSocketName:Send(ip, port, data)

UdpSocketName:GetSockName()
--End UDP --

--Start JSON--
json.encode(object)

json.decode(jsonString, startPos)

json.null()
--End JSON--

--Start NamedControl--
NamedControl.GetText("name")

NamedControl.SetText(name, value)

NamedControl.GetValue(name)

NamedControl.SetValue(name, value)

NamedControl.GetPosition(name)

NamedControl.SetPosition(name, position)
--End Named Control--

--Start Controls--
Controls.Inputs[input].Value

Controls.Inputs[input].EventHandler

Controls.Outputs[output].Value
--End Controls --


