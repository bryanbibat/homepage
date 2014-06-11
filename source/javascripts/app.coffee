#= require bootstrap

$ ->
  $(".colorbox").colorbox()

  $(document).on("click", "a[href*=\"#\"]", ->
    if @hash
      $.bbq.pushState "#/" + @hash.slice(1)
      false
  ).ready ->
    $(window).bind "hashchange", (event) ->
      tgt = location.hash.replace(/^#\/?/, "")
      if document.getElementById(tgt)
        $.smoothScroll
          scrollTarget: "#" + tgt
          offset: 0

    $(window).trigger "hashchange"
