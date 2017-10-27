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
8. How you can get params from compents inside tag?
           
           # this.props.children
           
           var HelloWorld = React.createClass({
              render: function() {
                return <p> { this.props.children } </p>;
              }
            });
            
            ReactDOM.render(
              <HelloWorld> This is the text for children property! </HelloWorld>,
              document.querySelector("#container")
            );        
        
9. How you can add css class for react component?
            
            #  use  className attribute
             <div className="letter">

10. How you can add css rules directly from js?
                
        var letterStyle = {
          padding: 10,
          margin: 10,
          backgroundColor: this.props.bgcolor,
          color: "#333",
          display: "inline-block",
          fontFamily: "monospace",
          fontSize: "32",
          textAlign: "center"
        };

        return (
          <div style={letterStyle}>
            {this.props.children}
          </div>
        );              
11. How you can pass all properties by one time?
          
            # instead of this
            <Square color={this.props.color} heigth={this.props.height}/>
            # use that
            <Square {...this.props}/>
