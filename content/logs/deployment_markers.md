---
title: Deployment Markers
chapter: true
weight: 73
---

# Deployment Markers

Deployment markers are important tools used to keep track of the progress of software deployment processes. They serve as indicators to identify the specific stages of deployment, as well as the status of each stage. These markers help to ensure that the software deployment process is well-managed, efficient, and transparent to all stakeholders involved.

Some use cases are:

- Build markers: These indicate the successful completion of a build process.
- Test markers: These indicate the successful completion of testing processes.
- Release markers: These indicate the successful completion of release processes.
- Deployment markers: These indicate the successful completion of deployment processes.
- Rollback markers: These indicate the successful completion of a rollback process.

By using deployment markers, teams can easily monitor the progress of deployments and quickly identify any issues that may arise during the deployment process. This enables them to respond quickly to any issues and ensure that the deployment is completed successfully and without any significant problems.

In the following lab we will cover the following:

1. Send deployment logs by API
1. Select the markers you want to view
1. View the markers in the Exceptions tab
1. View additional details in the marker log

## Deployment Marker Lab

You can send deployment logs by API to automatically correlate exceptions with service deployments directly in your Logz.io Exceptions tab.

Send deployment logs by API
Use the API endpoint to create Deployment markers.

Here’s an example payload:

```
{
  "markers": [
    {
      "description": "marker description",
      "title": "marker title",
      "tag": "DEPLOYMENT",
      "timestamp": 1613311091679,
      "metadata": {
        "region": "us-east-1",
        "deployedBy": "bot"
      }
    }
  ]
}
```

## Send a deployment markers

You have sent deployment markers in the past however you did not know how they worked. Additionally you have been using an utility that will send the markers to logz.io.
As mentioned above it doesn't have to be only for deployment it can be for anything the payload and what you do with them is what matters. In this exercise you will send marker that will mark a fictitious marketing campaign.

Copy the following code and paste it in your terminal.

```
echo '{
  "markers": [
    {
      "description": "Marketing campaing - Got o11y?",
      "title": "Lauch of Got o11y marketing campaign",
      "tag": "OTHER",
      "metadata": {
        "region": "North America",
        "deployedBy": "External Marketing Team",
        "duration": "2 hours",
        "type": "MARKETING"
      }
    }
  ]
}' >> marketing-marker.json

```

## Select the markers you want to view

The deployment logs you sent by API in the previous step appear as Deployment markers in your Logz.io Exception graphs. All Deployment markers are selected by default.

Open the Deployments menu to view all markers that appear in your search time frame. You can select/unselect markers to focus on the ones of interest to you.
![Select Deployment Markers](/images/logs/logz-io-logs-deployment-markers.png)

##### Select Deployment markers to enable them in Exception graphs

## View the markers in the Exceptions tab

Hover over the markers in your Exception graphs to view their title and time stamp.
When sending Deployment marker logs, it is recommended to send the service name in the title field.
![Deployment Marker Details](/images/logs/logz-io-logs-deployment-markers-detail.png)

##### View additional details in the marker log

Some of the fields in the deployment logs sent by API are not rendered in the Exceptions tab view. These include the description and additional metadata fields.
You can run the search `_exists_: \_\_logzio_marker_title` to retrieve your marker logs. Switch to the JSON log view to look up the additional details and context available for your Deployment markers.

As you can see it returned 3 deployment markers if you did more it would do more.
![Get all Markers](/images/logs/logz-io-logs-get-all-markers.png)
