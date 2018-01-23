<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata"><rules>
        <fullName>PromotedEliteMember_WorkflowRule</fullName>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>EliteAssociation__c.isBackupMember__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>EliteAssociation__c.promotedMember__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>递补 自动 程序 （递补日，候补）</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules></Workflow>