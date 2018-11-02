## Alert Related API Methods
---

The following methods are all relating to Grafana administration


##### Get all alerts
```ruby
g.get_alerts()
```

##### Get all notifications
```ruby
g.get_alert_notifications()
```

##### Creating a Notification:
```ruby
g.create_alert_notification(
{
  "name": "new alert notification",  #Required
  "type":  "email",                  #Required
  "isDefault": false,
  "sendReminder": false,
  "settings": {
    "addresses": "carl@grafana.com;dev@grafana.com"
   }
 })
```

