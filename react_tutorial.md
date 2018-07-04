1. React with rails start
        
        https://medium.com/quick-code/simple-rails-crud-app-with-react-frontend-using-react-rails-gem-b708b89a9419

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
12. What is the function will fire before component render?
        
        getInitialState: function() {
            return {
                strikes: 0
            };
        }
13. What is the function will fire after component render?
        
        componentDidMount: function() {
            setInterval(this.timerTick, 1000);
        }
14. What is the function will fire state shanging?
        
        this.setState({
          strikes: this.state.strikes + 100
        });
15. How you can create own function and invoke her?
        
            var LigtingContainer = React.createClass({
              timerTick: function() {
                 # do something
              },
              render: function() {
                this.timerTick;
                return (
                  <h1>{this.state.strikes}</h1>
                );
              }
            });
16. How you can fire event on click?
        
            var CounterParent = React.createClass({
              increase: function(e) {
                # do something by click
              },
              render: function() {
                return (
                  <div}>
                    <button onClick={this.increase}> + </button>
                  </div>
                );
              }
            });
17. How you can catch click with ShiftButton?
        
              increase: function(e) {
                if(e.shiftKey) {
                  # do something with pressed shift button 
                }
              }
18. How you can add Listeners by Event?
        
            var Something = React.createClass({
              handleMyEvent: function(e) {
                alert('sss');
              },
              componentDidMount: function() {
                window.addEventListener("someEvent", this.handleMyEvent);
              },
              componentWillUnmount: function() {
                window.removeEventListener("someEvent", this.handleMyEvent);
              },
              render: function() {
                return (
                   <div>Hello!</div>
                );
              }
            });
19. What you can say about 'Initial render life cycle'?

        getDefaultProps
        getInitialState
        componentWillMount
        render
        componentDidMount
20. What you can say about 'State change life cycle'?

        shouldComponentUpdate
        componentWillUpdate
        render
        componentDidUpdate
21. What you can say about 'Props change life cycle'?

        componentWillReceiveProps
        shouldComponentUpdate
        componentWillUpdate
        render
        componentDidUpdate
22. How you can add ReactRouter?
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/react-router/4.2.0/react-router.js"></script>
23. How to get values from input?
        
        <input ref={(a) => this._inputElement = a} placeholder="input task">
        </input>
        
        # them get
        text: this._inputElement.value
24. How to generate react app?
        
        npx create-react-app my-app
        cd my-app
        npm start
