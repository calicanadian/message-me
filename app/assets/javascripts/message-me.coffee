$ ->
  $(document).on "turbolinks:load", () ->
    $(".ui.dropdown").dropdown()
    $(".message .close").on "click", (e) ->
      e.preventDefault()
      $(this).closest(".message").transition("fade")
