using System;
using System.Collections.Generic;
using System.Text;

namespace Game
{
	public enum ActionType
	{
		Idle,
		Run,
		Celebrate,
		Die,
		Jump,
	}

	public enum EntityType
	{
		MonsterA,
		MonsterB,
		MonsterC,
		MonsterD,
		Player,
	}

	public enum Direction
	{
		Left = 0,
		Rght = 1,
	}
}
