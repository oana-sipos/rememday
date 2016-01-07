// This file must include your components _and_ their dependencies (eg, Underscore.js).
var Entry = React.createClass({
  render() {
    return <div>entry {this.props.name}</div>
  }
})

var EntriesTable = React.createClass({
  render() {
    return <div>{this.props.entries.length}</div>
  }
})

var Mood = React.createClass({
  getInitialState() {
    return {clicked: false}
  },
  handleClick(event) {
    if (this.props.clickable) {
      this.setState({
        clicked: !this.state.clicked
      })
    }
  },
  smiley() {
    return [":(", ":/", ":)", ":D", "^^"][this.props.mood - 1];
  },
  color() {
    if (!this.state.clicked) {
      return 'black';
    } else if (this.props.mood < 3) {
      return 'red';
    } else {
      return 'green';
    }
  },
  title() {
    return this.props.mood + " - " + this.props.weight;
  },
  render() {
    return (
      <div title={this.title()} onClick={this.handleClick}>
        <span style={{color: this.color()}}>
          {(<strong>{this.smiley()}</strong>)}
        </span>
      </div>
    )
  }
})
