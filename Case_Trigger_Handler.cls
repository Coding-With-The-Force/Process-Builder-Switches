/**
 * Created by gerry on 9/26/2020.
 */

public with sharing class Case_Trigger_Handler
{
	public static void beforeUpdate(List<Case> caseList)
	{
		System.debug('This method ran ::: ');
		for(Case cs: caseList)
		{
			cs.Subject = 'The trigger updated me';
		}
	}

	public static void beforeInsert(List<Case> caseList)
	{
		for(Case cs: caseList)
		{
			cs.addError('This case might match : <a href="/5001H000019ki80QAA" >test name</a>', false);
		}
	}
}