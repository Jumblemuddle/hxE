package hxE;
import hxE.bits.BitSet;

/**
 * ...
 * @author P Svilans
 */
class Demand
{
	
	public var _require:Array<Class<Component>>;
	public var _reject:Array<Class<Component>>;
	
	public function new() 
	{
		_require = new Array<Class<Component>>();
		_reject = new Array<Class<Component>>();
	}
	
	public function has( componentClass:Class<Component>):Demand
	{
		_require.push( componentClass);
		
		return this;
	}
	
	public function lacks( componentClass:Class<Component>):Demand
	{
		_reject.push( componentClass);
		
		return this;
	}
	
}