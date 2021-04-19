def rot13(secret_messages)
  # your code here
    a = ('a'..'z').to_a
    z = ('A'..'Z').to_a
    secret_messages.map{ |message|
        message.chars.map{ |s| 
            unless s.match?(/[a-zA-Z]/)
                s
            else
                if s == s.downcase 
                    a[ ( a.index(s.to_s) + 13 ) % a.count ]
                else
                    z[ ( z.index(s.to_s) + 13 ) % z.count ]
                end
            end
        }.join("")
    }
end