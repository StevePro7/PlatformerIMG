using System;
using System.Collections.Generic;
using System.Text;

namespace Game
{
	public enum ActorType
	{
		MonsterA,
		MonsterB,
		MonsterC,
		MonsterD,
		Player,
	}

	public enum VerbType
	{
		Idle = 0,
		Run = 1,
		Celebrate = 2,
		Die = 3,
		Jump = 4,
	}

	public enum FaceType
	{
		Left,
		Rght,
	}

}
