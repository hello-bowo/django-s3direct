{% load i18n %}

<div class="{{ class }} s3direct" data-policy-url="{{ policy_url }}" data-signing-url="{{ signing_url }}" id="{{ element_id }}">

  <a class="file-link" target="_blank" href="{{ file_url }}">
    {% if file_url|slice:"-3:" == "jpg" or file_url|slice:"-3:" == "png" or file_url|slice:"-4:" == "jpeg" %}
      <img src="{{ file_url }}" style="max-height:100px;">
    {% else %}
      {{file_name}}
    {% endif %}
  </a>
  <a class="file-remove" href="#remove">{% trans "Remove" %}</a>
  <input class="csrf-cookie-name" type="hidden" value="{{ csrf_cookie_name }}">
  <input class="file-url" type="hidden" value="{{ file_url }}"  name="{{ name }}" />
  <input class="file-dest" type="hidden" value="{{ dest }}">
  <input class="file-input" type="file" style="{{ style }}"/>
  <div class="progress progress-striped active">
    <div class="bar"></div>
  </div>
</div>
