<div class="s3direct" data-policy-url="{{ policy_url }}" data-signing-url="{{ signing_url }}"">
  <a class="file-link" target="_blank" href="{{ file_url }}">
    {% if file_url|slice:"-3:" == "jpg" or file_url|slice:"-3:" == "png" or file_url|slice:"-4:" == "jpeg" %}
      <img src="{{ file_url }}" style="max-height:100px;">
    {% else %}
      {{file_name}}
    {% endif %}
  </a>
  <a class="file-remove" href="#remove">Remove</a>
  <input class="csrf-cookie-name" type="hidden" value="{{ csrf_cookie_name }}">
  <input class="file-url {{class}}" type="hidden" value="{{ file_url }}" name="{{ name }}" id="id_{{name}}"/>
  <input class="file-dest" type="hidden" value="{{ dest }}">
  <input class="file-input" type="file" style="{{ style }}"/>
  <div class="progress progress-striped active">
    <div class="bar"></div>
    <a href="#cancel" class="cancel-button">&times;</a>
  </div>
</div>
