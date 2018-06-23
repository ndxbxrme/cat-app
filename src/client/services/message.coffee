'use strict'

angular.module 'cat-app'
.factory 'message', ->
  messages =
    #forms
    "forms-cancel": 'Cancel'
    "forms-submit": 'Submit'
    #user
    "user-heading": 'user'
    "user-name-label": 'Name'
    #users
    "users-heading": 'users'
    "users-button-new": 'New user'
    #cat
    "cat-heading": 'cat'
    "cat-name-label": 'Name'
    #cats
    "cats-heading": 'cats'
    "cats-button-new": 'New cat'
    
  fillTemplate = (template, data) -> 
    template.replace /\{\{(.+?)\}\}/g, (all, match) ->
      evalInContext = (str, context) ->
        (new Function("with(this) {return #{str}}"))
        .call context
      evalInContext match, data
  m = (key, obj) ->
    if messages[key]
      return if obj then fillTemplate(messages[key], obj) else messages[key]
    if /-placeholder$/.test key
      key = key.replace 'placeholder', 'label'
      if messages[key]
        return if obj then fillTemplate(messages[key], obj) else messages[key]
    console.log 'missing message:', key
  m: m
.run ($rootScope, message) ->
  root = Object.getPrototypeOf $rootScope
  root.m = message.m