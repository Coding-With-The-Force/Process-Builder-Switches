/**
 * Created by gerry on 9/26/2020.
 */

public with sharing class Util_Trigger_Name_Bypass
{
	public static Set<String> bypassedTriggers = new Set<String>();

	public static void bypassTrigger(String triggerName)
	{
		bypassedTriggers.add(triggerName);
	}

	public static void removeBypass(String triggerName)
	{
		bypassedTriggers.remove(triggerName);
	}
}