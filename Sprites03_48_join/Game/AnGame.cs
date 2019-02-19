using System;
using System.Configuration;
using System.Net.Mime;
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

		private const int time = 10;
		private const int wide = 48;
		private const int high = 64;
		private Texture2D[] images;
		RenderTarget2D renderTarget;
		private Color color;
		private ActionType actionType;
		private EntityType entityType;
		//private Direction direction;
		private bool save;

		public AnGame()
		{
			save = true;
			if (null != ConfigurationManager.AppSettings["Save"])
			{
				save = Convert.ToBoolean(ConfigurationManager.AppSettings["Save"]);
			}

			entityType = (EntityType) Enum.Parse(typeof (EntityType), ConfigurationManager.AppSettings["Entity"], true);
			actionType = (ActionType) Enum.Parse(typeof (ActionType), ConfigurationManager.AppSettings["Action"], true);
			//direction = (Direction)Enum.Parse(typeof(Direction), ConfigurationManager.AppSettings["Direction"], true);

			graphics = new GraphicsDeviceManager(this)
			{
				PreferredBackBufferWidth = time * wide,
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

			images = new Texture2D[10];
			for (int index = 0; index < 10; index++)
			{
				string suffix = (index + 1).ToString().PadLeft(2, '0');
				String assetName = String.Format("{0}/{1}/{2}{3}", root, entityType, actionType, suffix);
				images[index] = Content.Load<Texture2D>(assetName);
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
				GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

				DrawImage(SpriteEffects.None);
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(0, null);
				Texture2D resolvedTexture1 = renderTarget.GetTexture();

				String fileName1 = String.Format("{0}/{1}_{2}.png", entityType, actionType, Direction.Left);
				resolvedTexture1.Save(fileName1, ImageFileFormat.Png);

				// Right
				GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

				DrawImage(SpriteEffects.FlipHorizontally);
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(0, null);
				Texture2D resolvedTexture2 = renderTarget.GetTexture();

				String fileName2 = String.Format("{0}/{1}_{2}.png", entityType, actionType, Direction.Rght);
				resolvedTexture2.Save(fileName2, ImageFileFormat.Png);

				Exit();
			}
			else
			{
				DrawImage(SpriteEffects.None);
				base.Draw(gameTime);
			}
		}

		private void DrawImage(SpriteEffects effects)
		{
			GraphicsDevice.Clear(color);
			spriteBatch.Begin();
			for (int index = 0; index < 10; index++)
			{
				spriteBatch.Draw(images[index], new Vector2(index*wide, 0), null, Color.White, 0.0f, Vector2.Zero, 1.0f, effects, 1.0f);
			}
			spriteBatch.End();
		}

		//private void DrawPlayer(int loops, int index)
		//{
		//    GraphicsDevice.Clear(color);
		//    spriteBatch.Begin();
		//    Rectangle rect = new Rectangle(size * index + left, 0, wide, size);
		//    spriteBatch.Draw(players[loops], Vector2.Zero, rect, Color.White);
		//    spriteBatch.End();
		//}
		//private void DrawMonst(int index)
		//{
		//    GraphicsDevice.Clear(color);
		//    spriteBatch.Begin();
		//    Rectangle rect = new Rectangle(size * index + left, 0, wide, size);
		//    spriteBatch.Draw(monsters[index], Vector2.Zero, rect, Color.White);
		//    spriteBatch.End();
		//}

		

	}
}
