1. Articles
        
        https://medium.com/quick-code/simple-rails-crud-app-with-react-frontend-using-react-rails-gem-b708b89a9419
        http://singlepageappbook.com/     
        http://andrewhfarmer.com/getting-started-tutorials/
        https://blog.codeship.com/realtime-with-react-and-rails/
        # add react to rails app
        https://www.pluralsight.com/guides/ruby-ruby-on-rails/react-vs-angular-2-integration-with-rails
2. How to include all react with cdn?
    
          <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.24/browser.js"></script>
          <script src="https://unpkg.com/react@16/umd/react.development.js" crossorigin></script>
          <script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js" crossorigin></script>

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

            import React from 'react';

            const HelloWorld = (props) => {
              return (
                <div>
                  <h1> {props.name} {props.age}</h1>
                  # inside tag 
                  <p>{props.children}</p>
                </div>
              )
            }

            export default person;
            
            ReactDOM.render(
              <HelloWorld name="Vlad" surname="Hilko"/> Children will be here <HelloWorld>,
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
           
            import React, { Component } from 'react';
            
            class App extends Component {
              increase = () => {
                # do something by click
              }
              
              render() {
                return (
                  <div>
                    <button onClick={this.increase}> + </button>
                  </div>
                )
              }
            })
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

23. How to get values from input?
        
        <input ref={(input_value) => this.inputElement = input_value} placeholder="input task">
        </input>
        
        # them get
        text: this.inputElement.value
24. How to generate react app?
        
        npx create-react-app my-app
        cd my-app
        npm start
25. How to change background color with react?
        
        document.body.style = 'background: red;';
26. Can you provide 2 ways for sending arguments into function?
 
          changeName = (newName) => {
                alert(newName)
          }
        # first
        onClick={() => this.changeName('Name')}
        # second
        onClick={this.changeName.bind(this, 'Max')}
27. How to add value from input?
        
          changeNameHandler = (event) => {
            event.target.value
          }
          <input onChange={this.changeNameHandler} type="text"/>
