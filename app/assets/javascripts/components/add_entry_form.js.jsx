var AddEntryForm = React.createClass({

  getInitialState: function(){
    return {
      name:   '',
      date:   '',
      memory: '',
      mood:   3,
      weight: ''
    }
  },

  handleChange: function(field) {
    return function(event) {
      var newState = {}
      newState[field] = event.target.value
      this.setState(newState)
    }.bind(this)
  },

  handleNumberChange: function(field) {
    return function(event) {
      var newState = {}
      var value = event.target.value // case1: "123" case2: "123a", case3: ""
      var numericValue = parseInt(value) // case: 123 case2: 123 case3: NaN
      if (!(numericValue.toString() === value || value === "")) {
      //if (numericValue.toString() !== value && value !== "") {
        this.setState({
          weightNumberWarning: 'Only numbers dummy'
        })
      } else {
        newState[field] = value
        newState.weightNumberWarning = null
        this.setState(newState)
      }
    }.bind(this)
  },

  handleSubmit: function(event) {
    event.preventDefault();

    if (this.formValid()) {
      this.doTheRequest();
    } else {
      alert('Make sure to fill in all fi')
    }
  },

  formValid: function() {
    if (this.state.name === "" || this.state.mood === "" || this.state.weight === "") {
      return false;
    }
    else {
      return true;
    }
  },

  doTheRequest: function() {
    $.ajax({
      url: '/entries',
      type: 'Post',
      data: {entry: this.state},
      success: function(){
        window.location = "/";
      },
      error: function(){
        alert("Something went wrong, don't get mad, please try again :D");
      }
    })
  },

  debug: function() {
    return false

    return (
      <pre>
        name: {this.state.name}{'\n'}
        date: {this.state.date}{'\n'}
        memory: {this.state.memory}{'\n'}
        mood: {this.state.mood}{'\n'}
        weight: {this.state.weight}{'\n'}
        weightNumberWarning: {this.state.weightNumberWarning}
      </pre>
    )
  },

  render: function(){
    return (
      // to manage this
      <form className="newEntry" onSubmit={this.handleSubmit}>
        <div>
          <ReactBootstrap.Input
            type="text"
            value={this.state.name}
            placeholder="Name"
            onChange={this.handleChange('name')} />
          <ReactBootstrap.Input
            type="text"
            value={this.state.memory}
            placeholder="Memory"
            onChange={this.handleChange('memory')} />
          <ReactBootstrap.Row>
            <ReactBootstrap.Col xs={6}>
              <ReactBootstrap.Input
                type="select"
                value={this.state.mood}
                placeholder="Mood"
                onChange={this.handleChange('mood')}>
                <option value={1}>1 - meeeh..</option>
                <option value={2}>2 - yet another day</option>
                <option value={3}>3 - okido :)</option>
                <option value={4}>4 - great :D</option>
                <option value={5}>5 - awesome!</option>
              </ReactBootstrap.Input>
            </ReactBootstrap.Col>
            <ReactBootstrap.Col xs={6}>
              <ReactBootstrap.Input
                type="text"
                value={this.state.weight}
                placeholder="weight"
                onChange={this.handleNumberChange('weight')} />
              {this.state.weightNumberWarning}
            </ReactBootstrap.Col>
          </ReactBootstrap.Row>

          {this.debug()}
        </div>
      <ReactBootstrap.ButtonInput bsStyle="success" block type="submit" value="Post" />
      </form>
    );
  }
})
