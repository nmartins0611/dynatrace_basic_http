# 
dynatrace.yml -- Rulebook<br />
http_fix.yml -- Remedy Playbook<br />
httd_dyna.sh -- Bash script to stop httpd.service<br />


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

{<br />
"dedup_key": "{PID}",<br />
"event_action": "trigger",<br />
"routing_key" : "YOUR_INTEGRATION_KEY",<br />
"payload": {<br />

 
"summary": "{ProblemTitle}",<br />
"source": "{ImpactedEntity}",<br />
"severity": "critical",<br />
"client": "dynatrace",<br />
"client_url": "{ProblemURL}",<br />

 
"custom_details": {<br />
"incident_key": "{PID}",<br />
"hostname": "{ImpactedEntity}",<br />
"event_storage_id": "{ImpactedEntity}",<br />
"State": "{State}",<br />
"ProblemTitle": "{ProblemTitle}",<br />
"Problem Details HTML": "{ProblemDetailsHTML}",<br />
"Problem Details JSON": {ProblemDetailsJSON},<br />
"ProblemID": "{ProblemID}",<br />
"Impact": "{ProblemImpact}"<br />
   
        }<br />
    }<br />
}
