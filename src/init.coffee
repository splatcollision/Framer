require "./css"

utils = require "./utils"
debug = require "./debug"

{View} = require "./views/view"
{ViewList} = require "./views/view"
{ScrollView} = require "./views/scrollview"
# {CollectionView} = require "./views/collectionview"
{ImageView} = require "./views/imageview"
# {TextView} = require "./views/textview"
{Animation} = require "./animation"

{Frame} = require "./primitives/frame"
{Spring} = require "./primitives/spring"

Global = {}
Global.View = View
Global.ScrollView = ScrollView
# Global.CollectionView = CollectionView
Global.ImageView = ImageView
# Global.TextView = TextView
Global.Animation = Animation
Global.Frame = Frame
Global.Spring = Spring

Global.utils = utils
Global.ViewList = ViewList

if window
	window.Framer = Global
	
	for k, v of Global
		window[k] = v

console.log "Webkit", utils.isWebKit()

# Alert if not WebKit
if not utils.isWebKit()
	alert "Sorry, only WebKit browsers are currently supported. \
See https://github.com/koenbok/Framer/issues/2 for more info."
