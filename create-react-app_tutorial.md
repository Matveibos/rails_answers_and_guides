https://medium.com/in-the-weeds/learning-react-with-create-react-app-part-1-a12e1833fdc

1. How to install?
      
        npm install -g create-react-app

2. How to create our first react app?
        
        create-react-app hello-world
        
3. How to run an aplication?
        
        yarn start
4. How to build the app for production?

        yarn run build
        npm run build
5. How to use css module?
      
       Upgrade to react-scripts@next (CRA v2) by running 
            yarn upgrade react-scripts@next
       You just have to create a file with the extension .module.css
            .myStyle {
              color: #fff
            }
       Then you can use it like so:

            import React from 'react'
            import styles from 'mycssmodule.module.css'

            export default () => <div className={styles.myStyle}>We are styled!</div>

6. How you can start react-app on the diffirent port?
            
       PORT=3001 yarn start
