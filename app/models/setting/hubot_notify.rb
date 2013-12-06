class Setting::HubotNotify < ::Setting

  def self.load_defaults
    # Check the table exists
    return unless Setting.table_exists?
    return unless super

    Setting.transaction do
      [
        self.set('notify_enabled', "Whether to send notifications to hubot", true ),
        self.set('notify_address', "The address to send hubot notifications to", "http://hubot:8080/hubot/say" ),
        self.set('notify_room', "The room to notify", "#ircroom" ),
      ].compact.each { |s| self.create s.update(:category => "Setting::HubotNotify")}
    end

    true

  end

end
