1. Tutorial about calltracking on php
        
        http://www.goinflow.com/roll-your-own-phone-call-tracking-program-it-is-easy/

2. Test data for sms
        https://www.twilio.com/user/account/developer-tools/test-credentials

3. My phone number +18564990426

4. How you can send sms to me

        require 'twilio-ruby'

        # # put your own credentials here
        account_sid = 'ACcef80dd3ef1181c1b61fbc19d0f5c704'
        auth_token = '6cdea59a0bdaad73f0c5827a9a53fa37'
        # test account
        # account_sid = 'AC9e8697afd9089121da159aba00d0eaca'
        # auth_token = '7a1ef3271fbaa15e8852f05002653bcc'

        # set up a client to talk to the Twilio REST API
        @client = Twilio::REST::Client.new account_sid, auth_token

        # alternatively, you can preconfigure the client like so
        Twilio.configure do |config|
          config.account_sid = account_sid
          config.auth_token = auth_token
        end

        # and then you can create a new client without parameters
        @client = Twilio::REST::Client.new

        @client.messages.create(
          from: '+18564990426',
          to: '+375298145701',
          body: 'Hello me!'
        )

5. voximplant.com что-то похожее на аналог е
6. Ещё один аналог https://github.com/Nexmo/nexmo-ruby
7. https://github.com/sipuni/static-calltracking
