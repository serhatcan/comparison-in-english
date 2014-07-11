package  {
		
	public class general {

		
			static var CheckWin:Number;
			
			//------------------------
			static var UserName:String;
			
			public function setName (username:String):void
			{
				UserName = username;
			}
			
			public function getName():String
			{
				return UserName;
			}
			
			public function setCheckWin (win:Number):void
			{
				CheckWin = win;
			}
			
			public function getCheckWin():Number
			{
				return CheckWin;
			}
			
	}

}
