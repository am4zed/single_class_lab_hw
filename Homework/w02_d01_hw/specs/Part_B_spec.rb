# Part_B_spec.rb
require('minitest/autorun')
require('minitest/rg')
require_relative('../Part_B')

class TestSportTeam < MiniTest::Test
  def test_get_team_name
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    assert_equal("Brooklyn Nets", team.team_name)
  end

  def test_get_players
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    assert_equal(["Mr T", "Limmy", "Queen"], team.players)
  end

  def test_get_coach
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    assert_equal("Wreck-it Ralph", team.coach)
  end

  def test_set_coach
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    team.coach = "Mr Bean"
    assert_equal("Mr Bean", team.coach)
  end

  def test_add_player
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    new_player_array = team.add_player("Spiderplant")
    assert_equal(["Mr T", "Limmy", "Queen", "Spiderplant"], new_player_array)
  end

  def test_player_included
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    answer = team.player_included("Queen")
    assert_equal(true, answer)
  end

  def test_player_not_included
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    answer = team.player_included("Lady Gaga")
    assert_equal(false, answer)
  end

  def test_team_outcome_win
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    result = team.team_outcome("win")
    assert_equal(1, result)
  end

  def test_team_outcome_lose
    team = SportTeam.new("Brooklyn Nets",["Mr T", "Limmy", "Queen"], "Wreck-it Ralph")
    result = team.team_outcome("lose")
    assert_equal(0, result)
  end
end
