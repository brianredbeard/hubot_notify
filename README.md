# hubot\_notify

A simple plugin to send and HTTP message (via POST) to a webservice (hubot)
for reposting to XMPP

# Installation:

Add to bundler.d/Gemfile.local.rb as:

    gem 'hubot\_notify', :git => 'https://github.com/brianredbeard/hubot\_notify.git'

then update & restart Foreman:

    bundle update

# Usage:


Add to your Foreman `config/settings.yaml`:

```yaml
:hubot:
  :notify_enabled: true
  :notify_address: 'http://hubot:8080/hubot/say'
  :notify_room: 'operations@conference.xmpp.example.com'
```

You will also need a listening Hubot (see below for a sample listener script)

Build a new host, and check you get a message in IRC from your bot.

# Setting up Hubot

Follow https://github.com/github/hubot/wiki/Deploying-Hubot-onto-UNIX as far as
"Installing Hubot". Then run:

   ./bin/hubot -c /tmp/hubot

to create a deployed version. Then add the http-post-plugin to the dependencies:

    cd /tmp/hubot
    vi hubot-scripts.json

    ["karma.coffee", "http-post-say.coffee"]

    cd /tmp/hubot && bin/hubot 

You probably want to either background this with nohup or run it in a screen

# TODO

# Copyright

Copyright (c) 2012-2013 Greg Sutcliffe <gsutclif@redhat.com>  
Modifications Copyright (c) 2013 Brian Harrington <redbeard@redhat.com>  

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.  

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
