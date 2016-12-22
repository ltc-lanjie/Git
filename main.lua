b1
b2
b3
function Delegator.get_active(self)
	return Map.formvalue(self, "cbi.delg.current") or self.chain[1]
end

--[[
Page - A simple node
]]--

Page = class(Node)
Page.__init__ = Node.__init__
Page.parse    = function() end


--[[
SimpleForm - A Simple non-UCI form
]]--
SimpleForm = class(Node)

function SimpleForm.__init__(self, config, title, description, data)
	Node.__init__(self, title, description)
	self.config = config
	self.data = data or {}
	self.template = "cbi/simpleform"
	self.dorender = true
	self.pageaction = false
	self.readinput = true
end
b4
b5
b6