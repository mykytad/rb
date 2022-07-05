require_relative "bridge"
bridge = Bridge.new
if !bridge.is_opened?
	bridge.open
end