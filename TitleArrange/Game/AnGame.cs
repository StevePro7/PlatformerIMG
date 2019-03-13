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

		private const int size = 1;
		private int wide = 24 * size;
		private int high = 32 * size;
		private Texture2D image;
		
		private ActorType actorType;
		VerbType verbType;
		FaceType faceType;
		string assetName;
		RenderTarget2D renderTarget;
		private Color color;
		private bool save;

		public AnGame()
		{
			save = true;
			if (null != ConfigurationManager.AppSettings["Save"])
			{
				save = Convert.ToBoolean(ConfigurationManager.AppSettings["Save"]);
			}

			actorType = (ActorType)Enum.Parse(typeof(ActorType), ConfigurationManager.AppSettings["ActorType"], true);
			verbType = (VerbType)Enum.Parse(typeof(VerbType), ConfigurationManager.AppSettings["VerbType"], true);
			faceType = (FaceType)Enum.Parse(typeof(FaceType), ConfigurationManager.AppSettings["FaceType"], true);

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

			assetName = String.Format("{0}/{1}_{2}", actorType, verbType, faceType);
			image = Content.Load<Texture2D>(root + "/" + assetName);

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
		/// </summary>a
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			if (save)
			{
				const int count = 10;
				for (int index = 0; index < count; index++)
				{
					GraphicsDevice.SetRenderTarget(0, renderTarget);
					GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

					//DrawPlayer(loops, index);
					DrawImage(index);
					base.Draw(gameTime);

					GraphicsDevice.SetRenderTarget(0, null);
					Texture2D resolvedTexture = renderTarget.GetTexture();

					String fileName = String.Format("{0}_{1}.png", assetName, (index + 1).ToString().PadLeft(2, '0'));
					resolvedTexture.Save(fileName, ImageFileFormat.Png);
				}

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
			Rectangle rect = new Rectangle(index * wide, 0, wide, high);
			spriteBatch.Begin();
			spriteBatch.Draw(image, Vector2.Zero, rect, Color.White);
			spriteBatch.End();
		}

	}
}
