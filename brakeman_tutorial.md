1. How to create a setting file with a custom configuration?
  
        https://blog.sideci.com/prevent-security-incidents-with-rails-projects-using-brakeman-6fb103ea4185
        
        $ brakeman -I
          :
        Checks finished, collecting results...
        Filtering warnings...
        Input file: |config/brakeman.ignore|        	
        No such file. Continue with empty config? y
        1. Inspect all warnings
        2. Hide previously ignored warnings
        3. Prune obsolete ignored warnings
        4. Skip - use current ignore configuration
        ?  1
        --------------------
        Actions:
        i - Add warning to ignore list
        n - Add warning to ignore list and add note
        s - Skip this warning (will remain ignored or shown)
        u - Remove this warning from ignore list
        a - Ignore this warning and all remaining warnings
        k - Skip this warning and all remaining warnings
        q - Quit, do not update ignored warnings
        ? - Display this help
        --------------------
        Confidence: Weak
        Category: Cross Site Scripting
        Message: Unescaped model attribute
        Code: markdown.render(strip_tags(Bot.find_by_domain(request.host.split(".")[0]).readme.to_s))
        File: app/views/bots/show.html.erb
        Line: 17
        Action: (i, n, k, u, a, s, q, ?) i
        --------------------
        Ignoring 8 warnings
        Showing 0 warnings
        1. Save changes
        2. Start over
        3. Quit, do not save changes
        ?  1
        Output file: |config/brakeman.ignore|
