// This file must include your components _and_ their dependencies (eg, Underscore.js).
var Entry = React.createClass({
  render() {
    return <div>Aleluia {this.props.name}</div>
  }
})

var Mood = React.createClass({
  smiley() {
    return [":(", ":/", ":)", ":D", "^^"][this.props.mood - 1]
  },
  render() {
    return <div title={this.props.mood}>{this.smiley()}</div>
  }
})
