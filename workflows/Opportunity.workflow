<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata"><alerts>
        <fullName>Approval_waiting_needs_your_attention</fullName>
        <description>Approval waiting - needs your attention</description>
        <protected>false</protected>
        <recipients>
            <recipient>yhou2015@salesforce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseAssignmentNotification</template>
    </alerts><alerts>
        <fullName>Deal_Approved_By_Manager_Email_Alert</fullName>
        <ccEmails>hou4c@yahoo.com</ccEmails>
        <description>Deal Approved by Manager</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/UD_Deal_Approved_Email</template>
    </alerts><alerts>
        <fullName>Deal_rejected_UDNA</fullName>
        <description>Deal rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/CommunityForgotPasswordEmailTemplate</template>
    </alerts><alerts>
        <fullName>UD_Deal_Approved</fullName>
        <description>UD Deal Approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/UD_Deal_Approved_Email</template>
    </alerts><alerts>
        <fullName>UD_Deal_Rejected</fullName>
        <description>UD Deal Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/UD_Deal_Rejected_Email</template>
    </alerts><alerts>
        <fullName>UD_Deal_Rejected_Email_Alert</fullName>
        <ccEmails>hou4c@yahoo.com</ccEmails>
        <description>UD Deal Rejected Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/UD_Deal_Rejected_Email</template>
    </alerts><alerts>
        <fullName>emailRejection</fullName>
        <description>emailRejection</description>
        <protected>false</protected>
        <recipients>
            <recipient>yhou2015@salesforce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts><alerts>
        <fullName>email_yunzhen_hou</fullName>
        <description>email yunzhen hou</description>
        <protected>false</protected>
        <recipients>
            <recipient>yhou2015@salesforce.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/CommunityWelcomeEmailTemplate</template>
    </alerts><alerts>
        <fullName>udna_deal_approved</fullName>
        <ccEmails>hou4c@yahoo.com</ccEmails>
        <description>udna_deal_approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/UD_Deal_Approved_Email</template>
    </alerts><alerts>
        <fullName>udna_deal_rejected</fullName>
        <description>udna_deal_rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts><fieldUpdates>
        <fullName>Deal_Adjustment_Tracking_Amount</fullName>
        <description>Deal Adjustment Tracking Amount Accumulated Since</description>
        <field>Accumulated_Adjustment__c</field>
        <formula>PRIORVALUE( Accumulated_Adjustment__c )+  ABS(Amount - PRIORVALUE( Amount ))</formula>
        <name>Deal Adjustment Tracking Amount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Deal_Adjustment_Tracking_Count</fullName>
        <description>Deal Adjustment Tracking Update Count</description>
        <field>Total_Deal_Adjustments__c</field>
        <formula>PRIORVALUE(Total_Deal_Adjustments__c)+1</formula>
        <name>Deal Adjustment Tracking Count</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Go_to_next_stage</fullName>
        <field>approval_stage__c</field>
        <name>Go to next stage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>NextValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>RESET_EXPECTEDVALUE_ON_CLOSE</fullName>
        <description>set expected value to 0</description>
        <field>Amount</field>
        <formula>0</formula>
        <name>RESET_EXPECTEDVALUE_ON_CLOSE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>UD_Deal_Approval_Auto</fullName>
        <field>approval_stage__c</field>
        <literalValue>approved</literalValue>
        <name>UD Deal Approval Auto</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>UD_Deal_Approved_Update</fullName>
        <field>approval_stage__c</field>
        <literalValue>approved</literalValue>
        <name>UD Deal Approved update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>UD_Deal_Reject_Update</fullName>
        <field>approval_stage__c</field>
        <literalValue>rejected</literalValue>
        <name>UD Deal Reject Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>UD_Small_Deal_Auto_Approval</fullName>
        <field>approval_stage__c</field>
        <literalValue>approved</literalValue>
        <name>UD Small Deal Auto Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>UD_Update_RecordType_to_ReadOnly</fullName>
        <description>UD Update RecordType to ReadOnly except description</description>
        <field>RecordTypeId</field>
        <lookupValue>UD_Newly_Closed_Deal</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>UD Update RecordType to ReadOnly</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>UD_Update_RecordType_to_Total_ReadOnly</fullName>
        <description>UD Update RecordType to ReadOnly completely for anyone except system admin</description>
        <field>RecordTypeId</field>
        <lookupValue>UD_Long_Closed_Deal</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>UD Update RecordType to Total ReadOnly</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>ud_deal_approved</fullName>
        <field>approval_stage__c</field>
        <literalValue>approved</literalValue>
        <name>ud_deal_approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>ud_final_rejection</fullName>
        <field>approval_stage__c</field>
        <literalValue>rejected</literalValue>
        <name>ud_final_rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>ud_step_approved</fullName>
        <field>approval_stage__c</field>
        <name>ud_step approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>NextValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>waiting_on_manager_approval</fullName>
        <field>approval_stage__c</field>
        <literalValue>waiting_on_manager</literalValue>
        <name>waiting for manager approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><outboundMessages>
        <fullName>intCreateOrderERP</fullName>
        <apiVersion>35.0</apiVersion>
        <description>create an order record in ERP upon close won</description>
        <endpointUrl>http://www.yahoo.com</endpointUrl>
        <fields>AccountId</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>yhou2015@salesforce.com</integrationUser>
        <name>intCreateOrderERP</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages><rules>
        <fullName>RESET_EXPECTEDVALUE_ON_CLOSE</fullName>
        <actions>
            <name>email_yunzhen_hou</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>RESET_EXPECTEDVALUE_ON_CLOSE</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>email_alert_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <description>SET EXPECTED value to 0 on close if closed_lost</description>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>UD APAC Small Deal Auto Approval</fullName>
        <actions>
            <name>UD_Small_Deal_Auto_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessOrEqual</operation>
            <value>"JPY 100,000,000"</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>"USD 5,000,000"</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>UD Deals closed over 10 days</fullName>
        <actions>
            <name>UD_Update_RecordType_to_Total_ReadOnly</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CloseDate</field>
            <operation>lessOrEqual</operation>
            <value>10 DAYS AGO</value>
        </criteriaItems>
        <description>UD deals that has been closed for more than 10 days</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>UD EMEA Small Deal Auto Approval</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessOrEqual</operation>
            <value>"CNY 500,000"</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>UD Newly Closed Deal</fullName>
        <actions>
            <name>UD_Update_RecordType_to_ReadOnly</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CloseDate</field>
            <operation>greaterOrEqual</operation>
            <value>10 DAYS AGO</value>
        </criteriaItems>
        <description>change recordType and layout to read only except description</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>UD_Update_RecordType_to_Total_ReadOnly</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>UD Small Deal Auto Approval Global WFR</fullName>
        <actions>
            <name>UD_Deal_Approval_Auto</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>8 AND 7 AND ((1 AND 2) or (3 AND 4) or (5 AND 6))</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>"JPY 100,000,000"</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.region__c</field>
            <operation>equals</operation>
            <value>APAC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>"USD 100,000"</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.region__c</field>
            <operation>equals</operation>
            <value>NA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>"EUR 50,000"</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.region__c</field>
            <operation>equals</operation>
            <value>EMEA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.approval_stage__c</field>
            <operation>notEqual</operation>
            <value>approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>"USD 5,000,000"</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>UD Track Deal Adjustments</fullName>
        <actions>
            <name>Deal_Adjustment_Tracking_Amount</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Deal_Adjustment_Tracking_Count</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Rules to track the adjustments to the deal amount by owner.</description>
        <formula>Amount &lt;&gt; PRIORVALUE(Amount)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>apOppTask10DPriorClose</fullName>
        <active>false</active>
        <description>assign task to owner of opportunity 10days before close to ensure forecast and status update</description>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Please_ensure_forecast_category_is_accurate_prior_to_closed</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>intCreateOrderOnCloseWon</fullName>
        <actions>
            <name>intCreateOrderERP</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>USD 10,USD 0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><tasks>
        <fullName>Please_ensure_forecast_category_is_accurate_prior_to_closed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>-1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Please ensure forecast category is accurate prior to close</subject>
    </tasks><tasks>
        <fullName>email_alert_sent</fullName>
        <assignedTo>yhou2015@salesforce.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>true</protected>
        <status>Completed</status>
        <subject>email alert sent</subject>
    </tasks><tasks>
        <fullName>large_opportunity_approved</fullName>
        <assignedTo>yhou2015@salesforce.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>large opportunity approved</subject>
    </tasks></Workflow>