1. Redirect to visitors page angular ++++
2. Add edit page angular ++++
3. Add reaction on cancan exeption
4. add new template for table (with user)
5. Create only one page (visitors on moderations) with attribute(moderation, accept, rejected)
## Steps 

    rails g model Product name:string description:text price:decimal  photo_url:string
    
# add seed
      Product.create(name: "Apple", description: "One of the popular product", price: 12.99,
      photo_url: "http://assets.creativity-online.com/images/work/full/i/p/h/iPhone_Thumb12.jpg")

    

## Autentication on vk and facebook 

https://habrahabr.ru/post/142128/

https://www.sitepoint.com/rails-authentication-oauth-2-0-omniauth/


## Authentication with twitter and devise
https://www.digitalocean.com/community/tutorials/how-to-configure-devise-and-omniauth-for-your-rails-application
omniauth, omniauth-facebook, omniauth-vkontakte
## CanCanCan

https://www.sitepoint.com/cancancan-rails-authorization-dance/

http://stackoverflow.com/questions/24858695/rails-rest-api-permissions-cancan-with-angular-js-client-how-to-render-ui-bas
        
        cancan and devise
https://github.com/mezbahalam/devise_cancan

        with console
https://github.com/RolifyCommunity/rolify/wiki/Devise---CanCanCan---rolify-Tutorial

## Devise part 1
https://habrahabr.ru/post/208056/
## Authlogic
https://www.sitepoint.com/rails-authentication-with-authlogic/
## ActiveAdmin
https://www.sitepoint.com/easy-admin-interfaces-active-admin-rails/
## Angular Divese and Rails

https://www.sitepoint.com/setting-up-an-angular-spa-on-rails-with-devise-and-bootstrap/

https://thinkster.io/tutorials/angular-rails

https://blog.joshsoftware.com/2014/07/17/building-web-apps-with-rails4-and-angularjs-in-15-minutes/

https://richonrails.com/articles/getting-started-with-angularjs-and-rails

