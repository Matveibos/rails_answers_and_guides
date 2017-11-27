1. How you can make put request?
      
        In the request creation area switch to the body tab. Set raw radio button. In the lower text area input your body:

            {
              "power_up": {
                "name": "foo",
                "description": "bar"
               }
            }
        Then in a dropdown list to the rigth choose JSON (application/json) option instead of the default Text option.
        That will auto-set the required headers. That's it - you can press "Send" button.
