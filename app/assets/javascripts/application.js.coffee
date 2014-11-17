
#= require jquery
#= require jquery_ujs
#= require_tree .

$(document).ready ->
  $('#new_task').submit (e) ->
    e.preventDefault()
    
    taskTitle = $('#task_title').val()
    
    $.ajax
      url: '/tasks'
      type: 'POST'
      dataType: 'JSON'
      data:
        task:
          title: taskTitle
    .success (task) ->
      $('.tasks-list').append("<li>#{task.title}</li>")
