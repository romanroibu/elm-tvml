module Tvml exposing
  ( Tvml, Attribute
  , plainText, map
  , audio, background
  , banner, footer, header, identityBanner, itemBanner, segmentBarHeader
  , activityIndicator, info, menuItem, nowPlayingMenuItem, placeholder, productInfo, ratingCard, relatedContent, reviewCard, segmentBarItem, tumblerItem
  , button, card, carousel, collectionList, grid, imgDeck, infoList, infoTable, list, menuBar, organizer, overlay, row, section, segmentBar, separator, stack, tumblerBar
  , buttonLockup, listItemLockup, lockup, monogramLockup
  , mediaContent
  , shelf
  , badge, decorationImage, fullscreenImg, heroImg, img, progressBar, ratingBadge, seasonBadge, textBadge
  , asset, relatedContentURL, searchField, textField
  , decorationLabel, description, monogram, ordinal, strike, subtitle, text, title
  )

import VirtualDom

-- CORE TYPES

{-|-}
type alias Tvml msg = VirtualDom.Node msg

{-|-}
type alias Attribute msg = VirtualDom.Property msg

{-|-}
plainText : String -> Tvml msg
plainText =
  VirtualDom.text

{-|-}
map : (a -> msg) -> Tvml a -> Tvml msg
map =
  VirtualDom.map

{-| Private -}
node : String -> List (Attribute msg) -> List (Tvml msg) -> Tvml msg
node =
  VirtualDom.node

-- COMPOUND BACKGROUND ELEMENTS

{-|-}
audio : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
audio =
  node "audio"

{-|-}
background : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
background =
  node "background"

-- COMPOUND BANNER AND HEADER ELEMENTS

{-|-}
banner : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
banner =
  node "banner"

{-|-}
footer : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
footer =
  node "footer"

{-|-}
header : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
header =
  node "header"

{-|-}
identityBanner : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
identityBanner =
  node "identityBanner"

{-|-}
itemBanner : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
itemBanner =
  node "itemBanner"

{-|-}
segmentBarHeader : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
segmentBarHeader =
  node "segmentBarHeader"

-- COMPOUND INFORMATION ELEMENTS

{-|-}
activityIndicator : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
activityIndicator =
  node "activityIndicator"

{-|-}
info : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
info =
  node "info"

{-|-}
menuItem : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
menuItem =
  node "menuItem"

{-|-}
nowPlayingMenuItem : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
nowPlayingMenuItem =
  node "nowPlayingMenuItem"

{-|-}
placeholder : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
placeholder =
  node "placeholder"

{-|-}
productInfo : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
productInfo =
  node "productInfo"

{-|-}
ratingCard : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
ratingCard =
  node "ratingCard"

{-|-}
relatedContent : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
relatedContent =
  node "relatedContent"

{-|-}
reviewCard : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
reviewCard =
  node "reviewCard"

{-|-}
segmentBarItem : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
segmentBarItem =
  node "segmentBarItem"

{-|-}
tumblerItem : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
tumblerItem =
  node "tumblerItem"

-- COMPOUND LAYOUT ELEMENTS

{-|-}
button : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
button =
  node "button"

{-|-}
card : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
card =
  node "card"

{-|-}
carousel : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
carousel =
  node "carousel"

{-|-}
collectionList : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
collectionList =
  node "collectionList"

{-|-}
grid : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
grid =
  node "grid"

{-|-}
imgDeck : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
imgDeck =
  node "imgDeck"

{-|-}
infoList : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
infoList =
  node "infoList"

{-|-}
infoTable : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
infoTable =
  node "infoTable"

{-|-}
list : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
list =
  node "list"

{-|-}
menuBar : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
menuBar =
  node "menuBar"

{-|-}
organizer : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
organizer =
  node "organizer"

{-|-}
overlay : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
overlay =
  node "overlay"

{-|-}
row : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
row =
  node "row"

{-|-}
section : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
section =
  node "section"

{-|-}
segmentBar : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
segmentBar =
  node "segmentBar"

{-|-}
separator : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
separator =
  node "separator"

{-|-}
stack : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
stack =
  node "stack"

{-|-}
tumblerBar : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
tumblerBar =
  node "tumblerBar"

-- COMPOUND LOCKUP ELEMENTS

{-|-}
buttonLockup : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
buttonLockup =
  node "buttonLockup"

{-|-}
listItemLockup : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
listItemLockup =
  node "listItemLockup"

{-|-}
lockup : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
lockup =
  node "lockup"

{-|-}
monogramLockup : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
monogramLockup =
  node "monogramLockup"

-- COMPOUND MULTIMEDIA ELEMENTS

{-|-}
mediaContent : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
mediaContent =
  node "mediaContent"

-- COMPOUND SHELF ELEMENTS

{-|-}
shelf : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
shelf =
  node "shelf"

-- SIMPLE DISPLAY ELEMENTS

{-|-}
badge : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
badge =
  node "badge"

{-|-}
decorationImage : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
decorationImage =
  node "decorationImage"

{-|-}
fullscreenImg : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
fullscreenImg =
  node "fullscreenImg"

{-|-}
heroImg : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
heroImg =
  node "heroImg"

{-|-}
img : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
img =
  node "img"

{-|-}
progressBar : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
progressBar =
  node "progressBar"

{-|-}
ratingBadge : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
ratingBadge =
  node "ratingBadge"

{-|-}
seasonBadge : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
seasonBadge =
  node "seasonBadge"

{-|-}
textBadge : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
textBadge =
  node "textBadge"

-- SIMPLE MULTIMEDIA ELEMENTS

{-|-}
asset : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
asset =
  node "asset"

{-|-}
relatedContentURL : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
relatedContentURL =
  node "relatedContentURL"

{-|-}
searchField : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
searchField =
  node "searchField"

{-|-}
textField : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
textField =
  node "textField"

-- SIMPLE TEXT ELEMENTS

{-|-}
decorationLabel : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
decorationLabel =
  node "decorationLabel"

{-|-}
description : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
description =
  node "description"

{-|-}
monogram : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
monogram =
  node "monogram"

{-|-}
ordinal : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
ordinal =
  node "ordinal"

{-|-}
strike : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
strike =
  node "strike"

{-|-}
subtitle : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
subtitle =
  node "subtitle"

{-|-}
text : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
text =
  node "text"

{-|-}
title : List (Attribute msg) -> List (Tvml msg) -> Tvml msg
title =
  node "title"
