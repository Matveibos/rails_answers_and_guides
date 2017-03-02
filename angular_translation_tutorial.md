1. How to add language with help object?
      
      	var fruits = {
            APPLE: 'Apple'
            CITRIC: {
                ORANGE: 'Orange' 
            }
        };

        $translateProvider
        .translations('en', fruits)
        .preferredLanguage('en');
        
2. How you can set default language?
        
        $translateProvider.preferredLanguage('ru');
