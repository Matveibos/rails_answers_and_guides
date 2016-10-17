Cheat book : https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/

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
10. the(irs?|y're|re)
          
          hree variations of their begin with the
11. -(\d{2})$
          
          Any sequence of exactly two numerical digits at the end of each line.
          3-10-2010
          11-7-06
          => -06
12. {2}
          
          Curly braces allow you to specify the exact number of occurrences of the pattern 
13. $
          
          The dollar sign $ will match the end of the line.
14. my_regex = /cat/
          
          puts my_regex.class   #   Regexp
15. word-boundaries: \b
          
          # gsub only world 'cat'
          str="My cat gets catatonic when I attempt to concatenate his food with Muscat grapes"
          puts str.gsub(/\bcat\b/, 'dog')
          => My dog gets catatonic when I attempt to concatenate his food with Muscat grapes
16. [\d,]

          The [\d,] matches any character that is either a numerical digit or a comma.
17. contract.match(/regexp/)
          
          will return string with match element
18. contract.match(/(\w+) (\d{1,2}), (\d{4})/)

          if you use scopes, then you can use such things:
          mtch = contract.match(/(\w+) (\d{1,2}), (\d{4})/)
          puts "Month: #{mtch[1]}"
          puts "Day: #{mtch[2]}"
          puts "Year: #{mtch[3]}"
          puts mtch[0]
          
          #=> Month: April
          #=> Day: 30
          #=> Year: 1996
          #=> 30 April 19
19. .+?

          it captured the whole date pattern
20. String.scan

          If you want to be able to access all instances of a regex match, use scan instead of match. It returns an array of           all matches in the target string
21. [^]
          
          The caret, when used inside [], acts as a negator. It signifies that we want to match the set of characters NOT               defined within the brackets
22. \1
          
          Name
          Address
          Street
          Payment
          Smith, John
          200
          Broadway
          $1,000
          
          regex = /(.+)\n(.+)\n(.+)\n(.+)/
          puts str.gsub(regex, '"\1","\2"')

          #=> "Name","Address","Street","Payment"
          #=>"Smith, John","200","Broadway","$1,000"
          
          We used parentheses in the pattern to save what we've captured. In the replacement sequence, using backslash and a           number will refer to those captured groups in the numerical order that they appear in the pattern. So, \1 will               refer to the first set of parentheses.
          
 
