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
3. How you can use interpolition variable?
        
            {
              "DELICIOUS_FRUIT": "{{fruit_name}} is delicious!"
            }
            
            {{ 'DELICIOUS_FRUIT' | translate:'{ fruit_name: “Apple” }' }}
4. How you can set automaticaly determination language?
            
            // try to find out preferred language by yourself
            $translateProvider.registerAvailableLanguageKeys(
                ['pl', 'en'],
                {
                    'en*': 'en',
                    'pl*': 'pl',
                    '*': 'en' // must be last!
                }
            );
            $translateProvider.fallbackLanguage('en');
            $translateProvider.determinePreferredLanguage();
            
5. How to add button for changing language?
            
            <button ng-click="changeLanguage('de')" translate="BUTTON_LANG_DE"></button>
            <button ng-click="changeLanguage('en')" translate="BUTTON_LANG_EN"></button>
            
            app.controller('Ctrl', ['$translate', '$scope', function ($translate, $scope) {
 
              $scope.changeLanguage = function (langKey) {
                $translate.use(langKey);
              };
            }]);
6. How to show current language?
            
            $translate.use()
6. How you can use chosen with angular-translate?
            
            <select chosen
                    placeholder-single-text="'{{ 'my.translation.placeholder' | translate }}'"
                    no-results-text="'{{ 'my.translation.noResults' | translate }}'" >
            </select>
7. How you can remember the selected language value?
            
            bower install angular-translate-storage-cookie
            # include 
            var module = angular.module('AppService', ['pascalprecht.translate','ngCookies']);
            # add
            $translateProvider.useCookieStorage();
8. How to include json file with keys?
            
              # translate folder app/assets/javascript/translations/locale-
              
              $translateProvider.useStaticFilesLoader
                prefix: '/assets/translations/locale-'
                suffix: '.json'
9. Get current language 
      
       # add $translate to controller and write
            var activeLanguage = $translate.use() ||
                $translate.storage().get($translate.storageKey()) ||
                $translate.preferredLanguage()
