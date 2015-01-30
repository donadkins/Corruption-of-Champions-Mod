/**
 * Created by Kitteh6660 on 01.29.15.
 */
package classes.Items 
{
	/**
	 * ...
	 * @author Kitteh6660
	 */
	import classes.ItemType;
	import classes.PerkLib;
	import classes.Player;
	import classes.GlobalFlags.kFLAGS
	
public class Shield extends Useable //Equipable
	{
		private var _block:Number;
		private var _perk:String;
		private var _name:String;
		
		public function Shield(id:String, shortName:String, name:String, longName:String, block:Number, value:Number = 0, description:String = null, perk:String = "") {
			super(id, shortName, longName, value, description);
			this._name = name;
			this._block = block;
			this._perk = perk;
		}
		
		public function get block():Number { return _block; }
		
		public function get perk():String { return _perk; }
		
		public function get name():String { return _name; }

		override public function useText():void {
			outputText("You equip " + longName + ".  ");
			if (game.player.weaponPerk == "large") {
				outputText("Your current weapon requires two hands so you have to unequip your " + game.player.weaponName + ".  ");
				game.flags[kFLAGS.UNEQUIP_SHIELD_BECAUSE_TWO_HANDED_WEAPON] = 1;
			}
		}
		
		public function playerEquip():Shield { //This item is being equipped by the player. Add any perks, etc. - This function should only handle mechanics, not text output
			return this;
		}
		
		public function playerRemove():Shield { //This item is being removed by the player. Remove any perks, etc. - This function should only handle mechanics, not text output
			return this;
		}
		
		public function removeText():void {} //Produces any text seen when removing the armor normally
		
	}
}