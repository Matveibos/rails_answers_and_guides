1. How you can install draper?
      
        gem 'draper'
2. How to generate a base decorator?
        
        rails generate decorator Article
3. How to create draper mannualy?
        
        # app/decorators/article_decorator.rb
        class ArticleDecorator < Draper::Decorator
         # ...
        end
4. How to add methods to draper?
        
        class ArticleDecorator < Draper::Decorator
          def published_at
            object.published_at.strftime("%A, %B %e")
          end
        end
5. How to start using this methods?
        
        @article = Article.first.decorate
        @articles = Article.popular.decorate