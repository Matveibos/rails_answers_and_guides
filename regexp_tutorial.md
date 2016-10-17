1. Check if a string matches or not regexp

          "test123" =~ /1/
           => 4
          --------------------------
          "test123"[/1/]
           => "1"
          --------------------------
           "test123".match(/1/)
           => (MatchData "1")
2. ^
           
           The carets stands for the start of the line
3. \s*
          
          The \s stands for any whitespace character. The asterisks * indicates that we are looking for 0 or more of these whitespaces.
4. \n
          
          This is a special character for a newline
5. +
          
          The plus +, known as the greedy operator, looks for one or more of the previous token
6. \[ or \]
          
          Square brackets are a special character in regexes. We just want a literal square bracket, so we escape it using a backslash \
7. \d+
          
          The \d represents any numerical digit. Thus, when followed by the greedy operator +, the \d+ matches one or more numerical digits.
8. their|they're|there
          
          
          The pipe character | takes on the special meaning of "OR".
9. theirs?
          
          It makes optional the character that precedes it in the pattern – in this case, the s
          =>their and theirs
 
