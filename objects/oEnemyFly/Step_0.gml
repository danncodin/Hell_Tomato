/// @Description Move towards the Player 
event_user(state_);

// Warp Horizontal
warp();

#region Death
if health_ < 0
{
	score += 10;
	instance_destroy();
}
#endregion