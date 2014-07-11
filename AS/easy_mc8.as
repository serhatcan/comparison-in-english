package AS {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class easy_mc8 extends MovieClip {
		
		protected var originalPosition:Point;
		
		public function easy_mc8() // constructor code
		{
			
			originalPosition = new Point( x , y );
			//trace("ilk kutu constructor");
			buttonMode= true;		//sekilin ustune gelince button isareti cıkarır.
			addEventListener(MouseEvent.MOUSE_DOWN, drag);		
		}
		
		protected function drag(event:MouseEvent):void		//drag function
			{	
				parent.addChild( this );
				startDrag();
				//trace("DOWN");
				stage.addEventListener(MouseEvent.MOUSE_UP, stageUp);
			}
		
		protected function stageUp(event:MouseEvent):void		//drop function
		{
			stage.removeEventListener(MouseEvent.MOUSE_UP, stageUp);
			stopDrag();
			
			if(dropTarget)
				{
					if(dropTarget.parent.name == "target7")
						{
						//feedback_txt.text = "Excellent! You found the correct position!";
						}
					else
						{
						returnToOriginalPosition();
						}
				}
			else
				{
					returnToOriginalPosition();
				}
			
		}
	
		protected function returnToOriginalPosition():void
		{
			x=originalPosition.x;
			y=originalPosition.y;
		}
	
	}
	
}
