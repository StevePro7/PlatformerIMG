using System;

namespace Backgrounds
{
	static class Program
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		static void Main(string[] args)
		{
			using (AnGame game = new AnGame())
			{
				game.Run();
			}
		}
	}
}

