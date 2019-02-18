using System;
using System.Configuration;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Backgrounds
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;

		private const int size = 32;
		private const int wide = size * 10;
		private const int high = size * 1;
		private Texture2D[] monsters;
		private Texture2D[] player;
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
			monsters = new Texture2D[8];
			monsters[0] = Content.Load<Texture2D>("MonsterA/Idle_left");
			monsters[1] = Content.Load<Texture2D>("MonsterA/Run_left");
			monsters[2] = Content.Load<Texture2D>("MonsterB/Idle_left");
			monsters[3] = Content.Load<Texture2D>("MonsterB/Run_left");
			monsters[4] = Content.Load<Texture2D>("MonsterC/Idle_left");
			monsters[5] = Content.Load<Texture2D>("MonsterC/Run_left");
			monsters[6] = Content.Load<Texture2D>("MonsterD/Idle_left");
			monsters[7] = Content.Load<Texture2D>("MonsterD/Run_left");

			player = new Texture2D[5];
			player[0] = Content.Load<Texture2D>("Player/Celebrate_left");
			player[1] = Content.Load<Texture2D>("Player/Die_left");
			player[2] = Content.Load<Texture2D>("Player/Jump_left");
			player[3] = Content.Load<Texture2D>("Player/Run_left");
			player[4] = Content.Load<Texture2D>("Player/Idle_left");

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
				GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(0, null);
				Texture2D resolvedTexture = renderTarget.GetTexture();
				//resolvedTexture.Save("monsD_idle_org.bmp", ImageFileFormat.Bmp);
				resolvedTexture.Save("monsD_run_org.bmp", ImageFileFormat.Bmp);
				Exit();
			}
			else
			{
				Draw();
				base.Draw(gameTime);
			}
		}

		private void Draw()
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
