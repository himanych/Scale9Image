package
{
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.extensions.Scale9Image;
	import starling.textures.Texture;
	
	public class Scale9ImageExemplesRoot extends Sprite
	{
		[Embed(source = "./UV.jpg", mimeType = "image/jpeg")]
		private var bitmap : Class;

		private var image:Scale9Image;
		private var image2:Scale9Image;
		
		public function Scale9ImageExemplesRoot()
		{
			super();
			
			var text:Texture = Texture.fromBitmap(new bitmap(), false, false, 1);
			var text2:Texture = Texture.fromTexture(text, new Rectangle(10,10,80,80), null);
			
			image = new Scale9Image(text2, new Rectangle(15,15,35,35));
			addChild(image);
			
			Starling.current.nativeStage.addEventListener(MouseEvent.MOUSE_MOVE, function(e:MouseEvent):void
			{
				image.width = e.stageX;
				image.height = e.stageY;
			});
		}
	}
}