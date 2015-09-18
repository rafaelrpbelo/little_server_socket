require 'socket'

server = TCPServer.new 5050

loop do
  Thread.start(s.accept) do |s|
    print(s, " is accepted\n")
    s.write(Time.now)
    print(s, " is gone\n")
    s.close
  end
end
