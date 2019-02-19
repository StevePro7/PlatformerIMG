using System;
using System.Configuration;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Game
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;

		private const int size = 64;
		private const int wide = size * 10;
		private const int high = size * 1;
		private Texture2D[] monsters;
		private Texture2D[] players;
		private string[] monstNames;
		private string[] playerNames;
		RenderTarget2D renderTarget;
		private Color color;
		private bool save;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this)
			{
				PreferredBackBufferWidth = wide,
				PreferredBackBufferHeight = high,
				IsFullScreen = false
			};
			Content.RootDirectory = "Content";
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			save = true;
			IsMouseVisible = true;
			color = Color.Black;
			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
			const String root = "Sprites01_64";

			monsters = new Texture2D[8];
			monstNames = new string[8];
			for (int index = 0; index < 4; index++)
			{
				int count = index * 2 + 0;
				String assetName0 = String.Format("{0}/{1}", (MonsterLett)index, (MonsterType)0);
				monstNames[count] = assetName0.Replace("/", "_");
				monsters[count] = Content.Load<Texture2D>(root + "/" + assetName0);

				count = index * 2 + 1;
				String assetName1 = String.Format("{0}/{1}", (MonsterLett)index, (MonsterType)1);
				monstNames[count] = assetName1.Replace("/", "_");
				monsters[count] = Content.Load<Texture2D>(root + "/" + assetName1);
			}

			players = new Texture2D[5];
			playerNames = new string[5];
			for (int index = 0; index < 5; index++)
			{
				String assetName = String.Format("Player/{0}", (PlayerType)index);
				playerNames[index] = assetName.Replace("/", "_");
				players[index] = Content.Load<Texture2D>(root + "/" + assetName);
			}

			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			// Render target
			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			int width = pp.BackBufferWidth;
			int height = pp.BackBufferHeight;
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
		}

		/// <summary>
		/// UnloadContent will be called once per game and is the place to unload
		/// all content.
		/// </summary>
		protected override void UnloadContent()
		{
			Content.Unload();
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				Exit();
			}

			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			if (save)
			{
				for (int index = 0; index < 5; index++)
				{
					GraphicsDevice.SetRenderTarget(0, renderTarget);
					GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

					DrawPlayer(index);
					base.Draw(gameTime);

					GraphicsDevice.SetRenderTarget(0, null);
					Texture2D resolvedTexture = renderTarget.GetTexture();

					//String fileName = monstNames[index] + ".png";
					String fileName = playerNames[index] + ".png";
					resolvedTexture.Save(fileName, ImageFileFormat.Png);
				}
				Exit();
			}
			else
			{
				DrawMonst(0);
				base.Draw(gameTime);
			}
		}

		private void DrawPlayer(int index)
		{
			GraphicsDevice.Clear(color);

			spriteBatch.Begin();
			spriteBatch.Draw(players[index], Vector2.Zero, Color.White);
			spriteBatch.End();
		}
		private void DrawMonst(int index)
		{
			GraphicsDevice.Clear(color);

			spriteBatch.Begin();
			spriteBatch.Draw(monsters[index], Vector2.Zero, Color.White);
			spriteBatch.End();
		}

		private void DrawX()
		{
			GraphicsDevice.Clear(color);

			spriteBatch.Begin();

			for (int i = 0; i < 10; i++)
			{
				Vector2 pos = new Vector2(i * size, 0);
				Rectangle rect = new Rectangle(i * 64, 0, 64, 64);
				//spriteBatch.Draw(player[4], pos, rect, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
				spriteBatch.Draw(monsters[7], pos, rect, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			}

			spriteBatch.End();
		}

	}
}
