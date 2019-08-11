module Page.Links exposing (view, Model, Msg)
import Html exposing (..)
import Html.Attributes exposing (..)

type alias Model =
  {
  }


type Msg
    = NoOp


view : Model -> Html Msg
view model =
    div [] [ h5 [] [ text "Links" ]
           , ul [] [ viewLinksList "Twitter :" "sai_e1113" "https://twitter.com/sai_e1113"
                    , viewLinksList "Instagram :" "saitou_sai" "https://www.instagram.com/saitou_sai/"
                    , viewLinksList "pixiv :" "斎藤さい" "https://www.pixiv.net/member.php?id=2718132"
                    , viewLinksList "deviantArt :" "sai-wind" "https://www.deviantart.com/sai-wind"
                    , viewLinksList "ShareArt :" "斎藤さい" "https://say-iw.share-art.jp/user/views"
                    , viewLinksList "Behance :" "Sai Saitou" "https://www.behance.net/sai8951"
                   ]
           ]


viewLinksList : String -> String -> String -> Html Msg
viewLinksList sns name url =
    li [] [ div [ class "row underline" ] [ div [ class "col s2" ] [ text sns ] 
                                , div [ class "col s6" ] [ a [ href url, target "_blank"] [text name ] ]
                                ]
            ]