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

		private const int size = 16;
		private const int wide = 128;//16 * 8;
		private const int high = 64;//(6 + 4) * 8;
		private Texture2D emulogic;

		private const int max = 10;
		private Texture2D[] blocks;
		private Texture2D exit;
		private Texture2D gem;
		private Texture2D platform;
		private Texture2D debug;
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
			emulogic = Content.Load<Texture2D>("emulogic");
			gem = Content.Load<Texture2D>("Gem");
			exit = Content.Load<Texture2D>("Exit");
			platform = Content.Load<Texture2D>("Platform");
			debug = Content.Load<Texture2D>("debug");
			blocks = new Texture2D[max];
			for (BlockType b = BlockType.XX; b <= BlockType.B1; b++)
			{
				string assetName = "Block" + b;
				blocks[(int)b] = Content.Load<Texture2D>(assetName);
			}

			//blocks[0] = Content.Load<Texture2D>("BlockA0");
			//blocks[1] = Content.Load<Texture2D>("BlockA1");
			//blocks[2] = Content.Load<Texture2D>("BlockA2");
			//blocks[3] = Content.Load<Texture2D>("BlockA3");
			//blocks[4] = Content.Load<Texture2D>("BlockA4");
			//blocks[5] = Content.Load<Texture2D>("BlockA5");
			//blocks[6] = Content.Load<Texture2D>("BlockA6");
			//blocks[7] = Content.Load<Texture2D>("BlockB0");
			//blocks[8] = Content.Load<Texture2D>("BlockB1");

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
				resolvedTexture.Save("back_tiles.bmp", ImageFileFormat.Bmp);
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

			
			//spriteBatch.Draw(blocks[2], new Vector2(2 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			//spriteBatch.Draw(blocks[3], new Vector2(3 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);

			//const int offset = 32 * size;
			//const int offset = 0 * size;
			
			spriteBatch.Draw(emulogic, new Vector2(0, 0), new Rectangle(0, 0, 128, 8), Color.White);
			spriteBatch.Draw(emulogic, new Vector2(0, 8), new Rectangle(128, 0, 128, 8), Color.White);
			spriteBatch.Draw(emulogic, new Vector2(0, 16), new Rectangle(256, 0, 128, 8), Color.White);
			spriteBatch.Draw(emulogic, new Vector2(0, 24), new Rectangle((128 + 256), 0, 128, 8), Color.White);
			//spriteBatch.Draw(emulogic, new Vector2(0, 0), Color.White);

			//spriteBatch.Draw(platform, new Vector2(0 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);

			spriteBatch.Draw(blocks[0], new Vector2(0 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[1], new Vector2(1 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[2], new Vector2(2 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[3], new Vector2(3 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[4], new Vector2(4 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[5], new Vector2(5 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[6], new Vector2(6 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[7], new Vector2(7 * 16, 32 + 0 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);

			spriteBatch.Draw(blocks[8], new Vector2(0 * 16, 32 + 1 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[9], new Vector2(1 * 16, 32 + 1 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);

			//for (int i = 0; i < 9; i++)
			//{
			//    spriteBatch.Draw(blocks[i], new Vector2(0, offset + i * size + size), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			//}
			spriteBatch.Draw(platform, new Vector2(2 * 16, 32 + 1 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(exit, new Vector2(3 * 16, 32 + 1 * 16), null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(gem, new Vector2(4 * 16, 32 + 1 * 16), null, Color.Yellow, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(gem, new Vector2(5 * 16, 32 + 1 * 16), null, Color.Red, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);

			spriteBatch.Draw(debug, new Vector2(7 * 16, 32 + 1 * 16), null, Color.White, 0.0f, Vector2.Zero, 1.0f, SpriteEffects.None, 1.0f);

			spriteBatch.Draw(blocks[1], new Vector2(6 * 16 + 0, 32 + 1 * 16 + 0), null, Color.White, 0.0f, Vector2.Zero, 0.25f, SpriteEffects.None, 1.0f);
			//spriteBatch.Draw(blocks[8], new Vector2(6 * 16 + 8, 32 + 1 * 16 + 0), null, Color.White, 0.0f, Vector2.Zero, 0.25f, SpriteEffects.None, 1.0f);
			//spriteBatch.Draw(blocks[3], new Vector2(6 * 16 + 8, 32 + 1 * 16 + 0), null, Color.White, 0.0f, Vector2.Zero, 0.25f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[4], new Vector2(6 * 16 + 8, 32 + 1 * 16 + 0), null, Color.White, 0.0f, Vector2.Zero, 0.25f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(blocks[9], new Vector2(6 * 16 + 0, 32 + 1 * 16 + 8), null, Color.White, 0.0f, Vector2.Zero, 0.25f, SpriteEffects.None, 1.0f);
			spriteBatch.Draw(gem, new Vector2(6 * 16 + 8, 32 + 1 * 16 + 8), null, Color.Red, 0.0f, Vector2.Zero, 0.27f, SpriteEffects.None, 1.0f);

			spriteBatch.End();
		}

	}
}
