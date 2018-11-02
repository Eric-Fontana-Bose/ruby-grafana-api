
module Grafana

  module Alert

    def get_alerts()
      endpoint = "/api/alerts"
      @logger.info("Getting alerts (GET #{endpoint})") if @debug
      return get_request(endpoint)
    end

    def get_alert(alert_id)
      endpoint = "/api/alerts/#{alert_id}"
      @logger.info("Getting alert (GET #{endpoint})") if @debug
      return get_request(endpoint)
    end

    def pause_alert(alert_id, properties={})
      endpoint = "/api/alerts/#{alert_id}/pause"
      @logger.info("Pausing one alert (POST #{endpoint})") if @debug
      return post_request(endpoint, properties.to_json)
    end

    def pause_all_alerts()
      endpoint = "/api/admin/pause-all-alerts"
      @logger.info("Pausing all alerts (POST #{endpoint})") if @debug
      return post_request(endpoint, { 'paused': true} )
    end

    def get_alert_notifications()
      endpoint = "/api/alert-notifications"
      @logger.info("Getting alert notifications (GET #{endpoint})") if @debug
      return get_request(endpoint)
    end

    def create_alert_notification(properties)
      endpoint = "/api/alert-notifications"
      @logger.info("Create alert notification (POST #{endpoint})") if @debug
      return post_request(endpoint, properties.to_json)
    end

    def update_alert_notification(notify_id, properties)
      endpoint = "/api/alert-notifications/#{notify_id}"
      @logger.info("Update alert notification (PUT #{endpoint})") if @debug
      return put_request(endpoint, properties.to_json)
    end

    def delete_alert_notification(notify_id)
      endpoint = "/api/alert-notifications/#{notify_id}"
      @logger.info("Delete alert notification (DELETE #{endpoint})") if @debug
      return delete_request(endpoint)
    end
  end

end
