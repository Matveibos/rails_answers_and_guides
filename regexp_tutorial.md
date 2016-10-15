1. Check if a string matches or not regexp

     "test123" =~ /1/
      => 4
     --------------------------
     "test123"[/1/]
      => "1"
     --------------------------
      "test123".match(/1/)
      => (MatchData "1")
      
 
