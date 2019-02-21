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

		//private const int time = 1;
		private const int wide = 24;
		private const int high = 32;
		private Texture2D[] images;
		RenderTarget2D renderTarget;
		private Color color;
		private ActionType actionType;
		private EntityType entityType;
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

			int number = 1;
			if (ActionType.Idle != actionType)
			{
				number = 10;
			}
			graphics = new GraphicsDeviceManager(this)
			{
				PreferredBackBufferWidth = number * wide,
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

			images = new Texture2D[2];
			for (int index = 0; index < 2; index++)
			{
				string suffix = String.Empty;
				if (ActionType.Idle != actionType)
				{
					Direction temp = (Direction) index;
					suffix = "_" + temp.ToString();
				}
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

				// Left
				DrawImage((int)Direction.Left);
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(0, null);
				Texture2D resolvedTexture1 = renderTarget.GetTexture();

				string suffix1 = String.Empty;
				if (ActionType.Idle != actionType)
				{
					suffix1 = "_" + Direction.Left.ToString();
				}
				String fileName1 = String.Format("{0}/{1}{2}.png", entityType, actionType, suffix1);
				resolvedTexture1.Save(fileName1, ImageFileFormat.Png);

				// Right
				GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

				DrawImage((int)Direction.Rght);
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(0, null);
				Texture2D resolvedTexture2 = renderTarget.GetTexture();

				string suffix2 = String.Empty;
				if (ActionType.Idle != actionType)
				{
					suffix2 = "_" + Direction.Rght.ToString();
				}
				String fileName2 = String.Format("{0}/{1}{2}.png", entityType, actionType, suffix2);
				resolvedTexture2.Save(fileName2, ImageFileFormat.Png);

				Exit();
			}
			else
			{
				DrawImage(0);
				base.Draw(gameTime);
			}
		}

		private void DrawImage(int index)
		{
			GraphicsDevice.Clear(color);
			spriteBatch.Begin();
			spriteBatch.Draw(images[index], Vector2.Zero, null, Color.White, 0.0f, Vector2.Zero, 0.5f, SpriteEffects.None, 1.0f);
			spriteBatch.End();
		}

	}
}
