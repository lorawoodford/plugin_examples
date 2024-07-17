Rails.application.config.after_initialize do

  Plugins.register_plugin_section(
    Plugins::PluginSubRecord.new(
      'plugin_examples',
      'plugin_example',
      ['archival_object'],
      {
        cardinality: :zero_to_one,
        heading_text: I18n.t('plugin_example._singular'),
        show_on_edit: true,
        show_on_readonly: false,
        sidebar_label: I18n.t('plugin_example._singular'),
        template_name: 'plugin_example'
      }
    )
  )

end
