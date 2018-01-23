<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata"><fieldUpdates>
        <fullName>Adjust_Cost</fullName>
        <description>adjust cost based on who takes the lessons</description>
        <field>Cost__c</field>
        <formula>(if(Maxwell__c, 1, 0) + if(Michael__c, 1, 0) + if(Emily__c, 1,0)) * ( case(Private_Lesson__c, "Tennis", 20, "Music", 30, 0.00))</formula>
        <name>Adjust Cost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates><rules>
        <fullName>MmPrivateLessonAdjustCostRules</fullName>
        <actions>
            <name>Adjust_Cost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Mme_Private_Lesson__c.LessonDate__c</field>
            <operation>greaterOrEqual</operation>
            <value>LAST 90 DAYS</value>
        </criteriaItems>
        <description>Auto adjust cost and name for MmPrivateLessons</description>
        <triggerType>onAllChanges</triggerType>
    </rules></Workflow>