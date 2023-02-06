# dynatrace_basic_http

Setup Notification alerts in Settings>Integration>Problem Notifications 

Push a custom integration (Webhook) to your exposed EDA eg: http://13.40.187.55:5000/endpoint

I added additional HTTP Headers:

eventtype: http_server


Payload Info:

{
"summary": "{ProblemTitle}",
"source": "{ImpactedEntity}"
}

I used the Default Alerting profile with all of the timers set to 0.


###################################




###################################


Payload Examples:

{
"dedup_key": "{PID}",
"event_action": "trigger",
"routing_key" : "YOUR_INTEGRATION_KEY",
"payload": {

 
"summary": "{ProblemTitle}",
"source": "{ImpactedEntity}",
"severity": "critical",
"client": "dynatrace",
"client_url": "{ProblemURL}",

 
"custom_details": {
"incident_key": "{PID}",
"hostname": "{ImpactedEntity}",
"event_storage_id": "{ImpactedEntity}",
"State": "{State}",
"ProblemTitle": "{ProblemTitle}",
"Problem Details HTML": "{ProblemDetailsHTML}",
"Problem Details JSON": {ProblemDetailsJSON},
"ProblemID": "{ProblemID}",
"Impact": "{ProblemImpact}"
   
        }
    }
}
