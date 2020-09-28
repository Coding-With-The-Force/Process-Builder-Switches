/**
 * Created by gerry on 9/26/2020.
 */

//The utility class that allows us to determine which triggers we want to bypass
public with sharing class Util_Trigger_Name_Bypass
{
	//The set of trigger names that we want to bypass in our trigger.
	public static Set<String> bypassedTriggers = new Set<String>();

	//Method that allows us to add a trigger that we want to bypass
	public static void bypassTrigger(String triggerName)
	{
		bypassedTriggers.add(triggerName);
	}

	//Method that allows us to remove a trigger from our bypassed triggers set
	public static void removeBypass(String triggerName)
	{
		bypassedTriggers.remove(triggerName);
	}
}