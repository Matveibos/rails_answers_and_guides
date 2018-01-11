1. Take hash argument?
        
        {
        "expire_date"=>"28-07-2120",
         "limit"=>5000,
         "max-global-limit"=>20010030000}.slice(:limit)
         
         => {"limit"=>5000}
 2. Always has access to the hash key like a string
                
            {limit:5000}["limit"] => return nil
            {limit:5000}.with_indifferent_access["limit"] => return 5000
