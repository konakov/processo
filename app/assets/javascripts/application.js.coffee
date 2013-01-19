#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require_tree .

window.add_fields = (link, association, content) ->
  new_id = new Date().getTime()
  regexp = new RegExp("new_" + association, "g")
  $(link).before content.replace(regexp, new_id)

window.remove_fields = (link) ->
  $(link).prev("input[type=hidden]").val('1')
  $(link).closest(".fields").hide()
  $(link).closest(".fields").find('input').removeAttr('required')