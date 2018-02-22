1. Module

        var myNamespace = (function () {

          var myPrivateVar, myPrivateMethod;

          // A private counter variable
          myPrivateVar = 0;

          // A private function which logs any arguments
          myPrivateMethod = function( foo ) {
              console.log( foo );
          };

          return {

            // A public variable
            myPublicVar: "foo",

            // A public function utilizing privates
            myPublicFunction: function( bar ) {

              // Increment our private counter
              myPrivateVar++;

              // Call our private method using bar
              myPrivateMethod( bar );

            }
          };

        })();
2. Singleton

        var mySingleton = (function () {

          // Instance stores a reference to the Singleton
          var instance;

          function init() {

            // Singleton

            // Private methods and variables
            function privateMethod(){
                console.log( "I am private" );
            }

            var privateVariable = "Im also private";

            var privateRandomNumber = Math.random();

            return {

              // Public methods and variables
              publicMethod: function () {
                console.log( "The public can see me!" );
              },

              publicProperty: "I am also public",

              getRandomNumber: function() {
                return privateRandomNumber;
              }

            };

          };

          return {

            // Get the Singleton instance if one exists
            // or create one if it doesn't
            getInstance: function () {

              if ( !instance ) {
                instance = init();
              }

              return instance;
            }

          };

        })();
