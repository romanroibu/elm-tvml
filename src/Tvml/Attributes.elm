module Html.Attributes exposing
  ( style, attribute, map
  , accessibilityText, aspectFill, audioMode, autoHighlight, centered, disabled, firstName, handlesOverflow, height, keyboardType, lastName, minLength, mode, playbackMode, rowCount, showSpinner, showsScrollIndicator, secure, src, theme, type, value, width
  )

import Tvml exposing (Attribute)
import Json.Encode as Json
import VirtualDom

{-|-}
style : List (String, String) -> Attribute msg
style =
  VirtualDom.style

{-|-}
attribute : String -> String -> Attribute msg
attribute =
  VirtualDom.attribute

{-| Private -}
boolAttribute : String -> Bool -> Attribute msg
boolAttribute name bool =
  {-| TODO: This may not be correct... -}
  VirtualDom.property name (Json.bool bool)

{-| Private -}
intAttribute : String -> Int -> Attribute msg
intAttribute name int =
  {-| TODO: This may not be correct... -}
  attribute name (toString int)

{-| Private -}
floatAttribute : String -> Float -> Attribute msg
floatAttribute name float =
  {-| TODO: This may not be correct... -}
  attribute name (toString float)

{-|-}
map : (a -> msg) -> Attribute a -> Attribute msg
map =
  VirtualDom.mapProperty

-- TVML ATTRIBUTES

{-|-}
accessibilityText : String -> Attribute msg
accessibilityText =
  attribute "accessibilityText"

{-|-}
aspectFill : Bool -> Attribute msg
aspectFill =
  boolAttribute "aspectFill"

{-|-}
audioMode : String -> Attribute msg
audioMode =
  attribute "audioMode"

{-|-}
autoHighlight : Bool -> Attribute msg
autoHighlight =
  boolAttribute "autoHighlight"

{-|-}
centered : Bool -> Attribute msg
centered =
  boolAttribute "centered"

{-|-}
disabled : Bool -> Attribute msg
disabled =
  boolAttribute "disabled"

{-|-}
firstName : String -> Attribute msg
firstName =
  attribute "firstName"

{-|-}
handlesOverflow : Bool -> Attribute msg
handlesOverflow =
  boolAttribute "handlesOverflow"

{-|-}
height : Int -> Attribute msg
height =
  intAttribute "height"

{-|-}
keyboardType : String -> Attribute msg
keyboardType =
  attribute "keyboardType"

{-|-}
lastName : String -> Attribute msg
lastName =
  attribute "lastName"

{-|-}
minLength : Int -> Attribute msg
minLength =
  intAttribute "minLength"

{-|-}
mode : String -> Attribute msg
mode =
  attribute "mode"

{-|-}
playbackMode : String -> Attribute msg
playbackMode =
  attribute "playbackMode"

{-|-}
rowCount : Int -> Attribute msg
rowCount =
  intAttribute "rowCount"

{-|-}
showSpinner : Bool -> Attribute msg
showSpinner =
  boolAttribute "showSpinner"

{-|-}
showsScrollIndicator : Bool -> Attribute msg
showsScrollIndicator =
  boolAttribute "showsScrollIndicator"

{-|-}
secure : Bool -> Attribute msg
secure =
  boolAttribute "secure"

{-|-}
src : String -> Attribute msg
src =
  attribute "src"

{-|-}
theme : String -> Attribute msg
theme =
  attribute "theme"

{-|-}
type' : String -> Attribute msg
type' =
  attribute "type"

{-|-}
value : Float -> Attribute msg
value =
  floatAttribute "value"

{-|-}
width : Int -> Attribute msg
width =
  intAttribute "width"
