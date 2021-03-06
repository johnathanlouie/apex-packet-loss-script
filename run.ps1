$names = @(
	"Salt Lake City"
	"Oregon - GCE 1"
	"Oregon - GCE 2"
	"Oregon 1"
	"Oregon 2"
	"St Louis"
	"Dallas"
	"Iowa - GCE 1"
	"Iowa - GCE 2"
	"Iowa - GCE 3"
	"Iowa - GCE 4"
	"New York"
	"South Carolina - GCE 1"
	"South Carolina - GCE 2"
	"South Carolina - GCE 3"
	"Virginia 1"
	"Virginia 2"
	# "Sao Paulo"
	# "Sao Paulo 1"
	# "Sao Paulo 2"
	# "London"
	# "Amsterdam"
	# "Belgium - GCE 1"
	# "Belgium - GCE 2"
	# "Belgium - GCE 3"
	# "Frankfurt 1"
	# "Frankfurt 2"
	# "Hong Kong"
	# "Taiwan - GCE 1"
	# "Taiwan - GCE 2"
	# "Singapore 1"
	# "Singapore - GCE 1"
	# "Singapore - GCE 2"
	# "Tokyo"
	# "Tokyo - GCE 1"
	# "Tokyo - GCE 2"
	# "Tokyo - GCE 3"
	# "Tokyo 1"
	# "Tokyo 2"
	# "Sydney"
	# "Sydney - GCE 1"
	# "Sydney - GCE 2"
	# "Sydney 1"
	# "Sydney 2"
)

$ips = @(
	"107.182.233.168"
	"104.198.102.93"
	"104.198.101.253"
	"52.40.240.176"
	"52.42.44.79"
	"209.239.121.82"
	"63.251.239.123"
	"130.211.193.234"
	"104.197.17.180"
	"104.197.136.10"
	"104.197.42.178"
	"107.150.147.67"
	"104.196.43.45"
	"35.196.104.104"
	"104.196.8.33"
	"52.6.64.33"
	"52.86.226.95"
	"177.54.152.31"
	"52.67.92.122"
	"52.67.31.204"
	"217.147.89.101"
	"64.95.100.189"
	"146.148.120.92"
	"104.155.80.155"
	"130.211.51.110"
	"52.58.81.34"
	"52.59.121.244"
	"69.88.135.37"
	"104.155.233.79"
	"104.199.182.138"
	"72.5.161.228"
	"35.185.189.243"
	"35.185.189.104"
	"161.202.72.179"
	"104.198.82.36"
	"104.198.82.65"
	"104.198.88.214"
	"52.69.157.152"
	"52.197.77.217"
	"27.50.72.162"
	"35.197.166.13"
	"35.201.19.135"
	"52.63.136.88"
	"52.62.160.212"
)

$i = 0
while ($i -lt $names.count) {
	write-output $names[$i]
	# write-output $ips[$i]
	ping $ips[$i] | Select-String -Pattern "\([0-9]+% loss\)"
	write-output ""
	$i++
}
