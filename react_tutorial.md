1. Single page pattern on js
        
        http://singlepageappbook.com/
1. Five simple react tutorial links
        
        http://andrewhfarmer.com/getting-started-tutorials/
1. React with rails tutorial?
    
        https://blog.codeship.com/realtime-with-react-and-rails/
2. How include all react with cdn?
    
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.24/browser.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react-dom.min.js"></script>

3. How you can add react to rails app?
        
        https://www.pluralsight.com/guides/ruby-ruby-on-rails/react-vs-angular-2-integration-with-rails
4. Can you show me 'Hello World' on react?
          
          <script type="text/babel">
            ReactDOM.render(<h1> Sherlock Homs </h1>, document.body);
          </script>
5. How to get element from html?

        <div id="container"></div>
        document.querySelector('#container')

6. How you can create component?
        
            var HelloWorld = React.createClass({
              render: function() {
                return <p> Hello World ! </p>;
              }
            });
            
            ReactDOM.render(
              <HelloWorld/>,
              document.querySelector("#container")
            );
            
7. How you can send params to component?

            var HelloWorld = React.createClass({
              render: function() {
                return <p> Hello World ! { this.props.name } and { this.props.surname } </p>;
              }
            });
            
            ReactDOM.render(
              <HelloWorld name="Vlad" surname="Hilko"/>,
              document.querySelector("#container")
            );
        
