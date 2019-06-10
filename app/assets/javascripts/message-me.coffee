$ ->
  window.scroll_bottom = ->
    if $("#messages").length > 0
      $("#messages").scrollTop($("#messages")[0].scrollHeight)

  window.submit_message = ->
    $("#message_body").unbind().on "keydown", (e) ->
      if e.keyCode == 13
        $("#submitMessage").click()
        e.target.value = ""

  $(document).on "turbolinks:load", () ->
    $(".ui.dropdown").dropdown()
    $(".message .close").on "click", (e) ->
      e.preventDefault()
      $(this).closest(".message").transition("fade")
    scroll_bottom()
    submit_message()
