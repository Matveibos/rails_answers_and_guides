1. How to install and run react-native app?
    
        npm install -g create-react-native-app
        
        create-react-native-app any_name
        cd any_app
        npm start

        
2. How to start ios - simulator?
        
        npm start
        # and in another window
        npm run ios

3. How to start android simulator?
        
        # 1. Download android studio
            https://developer.android.com/studio/
        # 2. Install it 
            
            Select custom mode and choose all points during installation 
        # 3. After installation click Configure -> SDK Manager
        ...
        # 4. Export some variables to bash
        export ANDROID_HOME=/Users/vladislav_hilko/Library/Android/sdk
        export PATH=$ANDROID_HOME/platform-tools:$PATH
        export PATH=$ANDROID_HOME/tools:$PATH
