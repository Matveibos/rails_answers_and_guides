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
6. How to add to draper ability to add html tag?
            
        def draper_h1
          h.content_tag(:h1, "Awesome", class: "display-1", style: "color: blue")
        end
7. How you can use rails view helper to draper?
        
        def draper_link
          h.link_to("", h.books_path, class: "btn btn-outline-primary")
        end
        
        # if you don't want to write h. everywhere, you can add 'include Draper::LazyHelpers' in the top of app
