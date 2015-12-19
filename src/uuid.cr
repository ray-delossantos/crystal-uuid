require "random"
require "./uuid/*"

module UUID

  def self.generate
		Random.new_seed
		"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".gsub(/[xy]/) { |s|
			r = (Random.rand*16).to_i|0
			if s == "x"
				v = r
			elsif
				v = (r & 0x3 | 0x8)
			end
			v.to_s(16)
		}
  end

	def self.generate_simple
		self.generate.gsub("-", "")
	end

end
