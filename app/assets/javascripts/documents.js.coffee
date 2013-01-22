# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.toggleInputs = ( other_selector ) ->

  this.each ->

    el = $(this)

    settings =
      input_tags: 'input, select'


    func = =>

      if el.find(settings.input_tags).val() != ''
        # Hide the other one
        el.siblings(other_selector).find(settings.input_tags).attr
          'required': false
          'disabled': true
          'value': ''
      else
        el.siblings(other_selector).find(settings.input_tags).attr
          'required': true
          'disabled': false

    func()

    el.find(settings.input_tags).change ->
      func()

$ ->

  # When a user edit/creaet a document, he should be able to select inputs/outputs or create new ones

  # If we are on the "Edit document" page
  if $('.edit_document').length

    $('.inoutput_association').toggleInputs('.inoutput_body_input')
    $('.inoutput_body_input').toggleInputs('.inoutput_association')

  if $('.edit_document').length or $('.new_document').length

    $('.add_inoutput').click ->
      $('.inoutput_association').toggleInputs('.inoutput_body_input')
      $('.inoutput_body_input').toggleInputs('.inoutput_association')

    $('#operations').hide()
    $('#open-operations').click ->
      $('#operations').toggle()

  # Show page
  if $('.document').length

    $('#operations .info').hide()
    $('.operation a').click ->
      $(this).next().toggle()