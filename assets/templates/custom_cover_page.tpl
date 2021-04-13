
<div style="padding-bottom: 3em">

    {% if config.site_name %}
        <h1>{{ config.site_name }}</h1>
    {% endif %}

    {% if config.site_description %}
        <h2>{{ config.site_description }}</h2>
    {% endif %}

</div>

<p>
    <small>Website: <a href="'https://docs.rockrobotic.com'">'https://docs.rockrobotic.com'</a></small><br />
    {% if config.copyright %}
        <small>{{ config.copyright }}</small><br />
    {% endif %}
</p>