require "csv"

clk_freq = 100000000
baud_rate = 115200
echo_mode = false
filename = "hello.csv"

# remove leading "1" bits from arr
def remove_idle(arr)
	while(arr[0] == "1") do
		arr.shift(1)
	end
	return arr
end

# grab array (arr) of bits representing ascii chars and convert them to a string
def get_msg(arr)
	message = String.new
	i = 0
	while i < arr.length do
		char = String.new
		8.times do
			char << arr[i]
			i+=1
		end
		num = char.reverse.to_i(2)
		char = [num].pack("C") # convert to string in binary representation
		message << char
	end	
	return message
end


def baud_check(file, divy)
	count_baud = 0
	pos = 0
	cnt = 0

	#baud rate check
	CSV.foreach("./#{file}") do |row|
		if cnt == 0 && row[3] == "0"
			pos = $INPUT_LINE_NUMBER + divy*7
			cnt = 1
		end

		if  $INPUT_LINE_NUMBER == pos
			cnt = 2
		end

		if cnt == 2 && row[3] == "1"
			# p $INPUT_LINE_NUMBER
			count_baud +=1
		end

		if cnt == 2 && row[3] == "0"
			cnt = 3
			break
		end
	end

	if count_baud < divy+10 and count_baud > divy-10
		return true
	else
		return false
	end
end


# script start
div = ((clk_freq.to_f)/(baud_rate.to_f)).to_i
offset = div/2

baud_result = baud_check(filename, div) ? "passed" : "failed"
puts "baud check #{baud_result}"
puts

bt_tx  = Array.new
bt_rx  = Array.new
usb_tx = Array.new
usb_rx = Array.new

# starting position
pos_bt_rx = -1
pos_bt_tx = -1
pos_usb_rx = -1
pos_usb_tx = -1

cnt_bt_rx = 0
cnt_bt_tx = 0
cnt_usb_rx = 0
cnt_usb_tx = 0

# parse csv file
CSV.foreach("./#{filename}") do |row|
	# p pos_bt_rx
	if cnt_bt_rx == 0 && row[3] == "0"
		pos_bt_rx = $INPUT_LINE_NUMBER + div + offset
		cnt_bt_rx = 9
	end

	if cnt_bt_tx == 0 && row[4] == "0"
		pos_bt_tx = $INPUT_LINE_NUMBER + div + offset
		cnt_bt_tx = 9
	end

	if cnt_usb_rx == 0 && row[5] == "0"
		pos_usb_rx = $INPUT_LINE_NUMBER + div + offset
		cnt_usb_rx = 9
	end

	if cnt_usb_tx == 0 && row[6] == "0"
		pos_usb_tx = $INPUT_LINE_NUMBER + div + offset
		cnt_usb_tx = 9
	end


	if $INPUT_LINE_NUMBER == pos_bt_rx
		cnt_bt_rx-=1
		bt_rx.push(row[3]) if cnt_bt_rx != 0
		pos_bt_rx += div if cnt_bt_rx != 0
	end

	if $INPUT_LINE_NUMBER == pos_bt_tx
		cnt_bt_tx-=1
		bt_tx.push(row[4]) if cnt_bt_tx != 0
		pos_bt_tx += div if cnt_bt_tx != 0
	end

	if $INPUT_LINE_NUMBER == pos_usb_rx 
		cnt_usb_rx-=1
		usb_rx.push(row[5]) if cnt_usb_rx != 0
		pos_usb_rx += div  if cnt_usb_rx != 0
	end

	if $INPUT_LINE_NUMBER == pos_usb_tx 
		cnt_usb_tx-=1
		usb_tx.push(row[6]) if cnt_usb_tx != 0
		pos_usb_tx += div  if cnt_usb_tx != 0
	end

end

bt_rx_msg = get_msg(bt_rx)
bt_tx_msg = get_msg(bt_tx)
usb_rx_msg = get_msg(usb_rx)
usb_tx_msg = get_msg(usb_tx)

puts "baud_rate: #{baud_rate.to_s}"
puts "bluetooth recieved string: #{bt_rx_msg}"
puts "bluetooth transmitted string: #{bt_tx_msg}"
puts "usb recieved string: #{usb_rx_msg}"
puts "usb transmitted string: #{usb_tx_msg}"

# chop last char off because other msg end earlier
bt_rx_msg.chop! if bt_rx_msg.length != usb_tx_msg.length
puts 

if (echo_mode)
	if bt_rx_msg == usb_tx_msg and bt_rx_msg == bt_tx_msg
		puts "data integrity check passed"
	else
		puts "data integrity check failed"
	end
else
	if bt_rx_msg == usb_tx_msg
		puts "data integrity check passed"
	else
		puts "data integrity check failed"
	end
end



