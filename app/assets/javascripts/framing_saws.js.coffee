# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("[rel='popover']").popover
    placement: "right" # top, bottom, left or right
    title: "Referencias para Dimensiones"
    html: "true"
    container:"body"
    content: "<div id=\"popOverBox\">
                1.22  x 2.44</br>
                1.549 x 2.464</br>
                2.16  x 2.464    =   86in</br>
                2.464 x 2.464    =   8 x 8</br>
                2.79  x 2.264</br>
                2.489 x 2.464</br>
                3.05  x 2.44     =   115in   =  3.12</br>
                3.40  x 2.44</br>
                3.66  x 2.44     =   3.72 - 3.70</br>
                4.88  x 2.44     =   4.92 - 5.00</br>
              </div>"

  return