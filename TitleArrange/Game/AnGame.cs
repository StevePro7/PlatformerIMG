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
		private int wide = 256;
		private int high = 192;
		private int index = 1;
		private SpriteFont font;
		private Texture2D[] image;
		string start = "PRESS START";
		Vector2 txtPos;

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
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			image = new Texture2D[5];
			image[0] = Content.Load<Texture2D>("title6_org_minus16");
			image[1] = Content.Load<Texture2D>("title8_org_minus16");
			//image[0] = Content.Load<Texture2D>("title6_org");
			//image[1] = Content.Load<Texture2D>("title8_org");
			//image[0] = Content.Load<Texture2D>("title6");
			//image[1] = Content.Load<Texture2D>("title8");
			image[2] = Content.Load<Texture2D>("BlockA0");
			image[3] = Content.Load<Texture2D>("Exit");
			image[4] = Content.Load<Texture2D>("Platform");

			font = Content.Load<SpriteFont>("Emulogic");

			txtPos = font.MeasureString(start);
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
				//const int count = 10;
				//for (int index = 0; index < count; index++)
				//{
					GraphicsDevice.SetRenderTarget(0, renderTarget);
					GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, color, 1, 0);

					DrawImage();
					base.Draw(gameTime);

					GraphicsDevice.SetRenderTarget(0, null);
					Texture2D resolvedTexture = renderTarget.GetTexture();

					String fileName = String.Format("MyTitle_org_minus16_{0}.png", index.ToString().PadLeft(2, '0'));
					resolvedTexture.Save(fileName, ImageFileFormat.Png);
				//}

				Exit();
			}
			else
			{
				DrawImage();

				base.Draw(gameTime);
			}
		}

		private void DrawImage()
		{
			GraphicsDevice.Clear(color);
			spriteBatch.Begin();
			//spriteBatch.Draw(image[index], new Vector2(4, -16), Color.White);
			//spriteBatch.Draw(image[index], new Vector2(0, -16), Color.White);
			spriteBatch.Draw(image[index], new Vector2(0, 0), Color.White);

			for (int i = 1; i < 16; i++)
			{
				spriteBatch.Draw(image[2], new Vector2(16 * i, 0), Color.White);
				spriteBatch.Draw(image[2], new Vector2(16 * i, 176), Color.White);
			}

			//spriteBatch.DrawString(font, start, new Vector2(0, 16), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 24), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 32), Color.White);

			//spriteBatch.DrawString(font, start, new Vector2(0, 40), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 48), Color.White);

			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 7), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 6), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 5), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 4), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 3), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 2), Color.White);
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 1), Color.White);
			
			float x = (256 - txtPos.X) / 2;
			float y = 176 - 8 * 4;
			//spriteBatch.DrawString(font, start, new Vector2(0, 176 - 8 * 3), Color.White);
			spriteBatch.DrawString(font, start, new Vector2(x, y), Color.White);

			spriteBatch.End();
		}

	}
}
