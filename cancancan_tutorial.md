1. How you can install cancancan?
      
      
      
2. Good article about cancancan?
          
          https://www.sitepoint.com/cancancan-rails-authorization-dance/
3. How to generate default cancancan ability?
          
          rails g cancan:ability
4. How to add cancancan to activeAdmin?
            
           # config/initializers/active_admin.rb
            ActiveAdmin.setup do |config|

              config.site_title = "Active Admin Can"
              config.authorization_adapter = ActiveAdmin::CanCanAdapter
              config.on_unauthorized_access = :access_denied
              config.cancan_ability_class = "Ability"
            end
            
          # application controller 
          class ApplicationController < ActionController::Base
              protect_from_forgery with: :exception

              def access_denied(exception)
                # redirect_to 'http://localhost:3000/', alert: exception.message
              end
           end
            
         # model Ability
         class Ability
              include CanCan::Ability

              def initialize(user)
                # debugger
                if user.is? :superadmin
                  can :manage, :all
                else 
                  # can :manage, :all
                  can :manage, Post
                  can :manage, AdminUser
                  # can :manage, ActiveAdmin::Page, name: "Dashboard"
                  can :manage, ActiveAdmin::Page
                end
           end
           
           # AdminUser model
           # add migration witn new column for user
           class AdminUser < ApplicationRecord
              devise :database_authenticatable, 
                     :recoverable, :rememberable, :trackable, :validatable
              # The available roles
              enum role: [ :admin, :default, :superadmin]

              def is?( requested_role )
                self.role == requested_role.to_s
              end
            end
5. How to check can_not action?
      
            cannot :update, AdminUser
            cannot :manage, Post
