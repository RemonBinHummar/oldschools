# author code : Muhammad Quwais Safutra
# from version 1.0.0 <02/15/2019>

require 'socket'
TIMEOUT = 10

def scans(host,port)
	socket = Socket.new(:INET,:STREAM)
	rem    = Socket.sockaddr_in(port,host)
	begin
		socket.connect_nonblock(rem)
	rescue Errno::EINPROGRESS
	end
	_, sockets, _ = IO.select(nil,[socket],nil,TIMEOUT)
	if sockets
		puts "[*] port #{port} open"
	else
		puts "[!] port #{port} closed"
	end
end

print "[?] host        "
host = gets.chomp()
puts "\n[+] STARTING SCANNING"
threads = []
port_lis = [9,20,21,22,23,25,37,42,43,49,67,68,69,79,80,88,109,110,111,218,209,427,491,513,561,660,694,752,754,989,990,1241,1311,3306,4001,5000,5050,5985,1443,443,53,1443,135]

port_lis.each { |i| 
	threads << Thread.new {
		scans(host,i)
	}
}
threads.each(&:join)

puts "[+] Scan success"