require 'minitest/autorun'
require './Requirements'
require './Tests/TestData_PlayerActions'

class TextParserTests < Minitest::Test
	
	include TestData_PlayerActions

	def test_text_parser_read_scan_all
		text_parser = TextParser.new
		action = text_parser.read("scan all")
		assert action.action == scan_all.action
	end

	def test_text_parser_read_scan_new_haven
		text_parser = TextParser.new
		action = text_parser.read("scan new haven")
		assert action.noun == scan_planet.noun
	end

	def test_text_parser_read_inspect_planets
		text_parser = TextParser.new
		action = text_parser.read("inspect planets")
		assert action.action == inspect_all.action
	end

	def test_text_parser_read_look_planets
		text_parser = TextParser.new
		action = text_parser.read("look planets")
		assert action.action == inspect_all.action
	end

	def test_text_parser_read_look_at_planets
		text_parser = TextParser.new
		action = text_parser.read("look at planets")
		assert action.action == inspect_all.action
	end

	def test_text_parser_read_no_input
		text_parser = TextParser.new
		action = text_parser.read("\n")
		assert action.action == do_nothing.action
	end

	def test_text_parser_read_scan_luthor
		text_parser = TextParser.new
		action = text_parser.read("scan luthor")
		assert action.noun == scan_luthor.noun
	end

	def test_text_parser_read_scan_luthor_ALL_CAPS
		text_parser = TextParser.new
		action = text_parser.read("SCAN LUTHOR")
		assert action.noun == scan_luthor.noun
	end


	def test_text_parser_read_end
		text_parser = TextParser.new
		action = text_parser.read("end")
		assert action.action == end_turn.action
	end
end