$(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.

    CKEDITOR.editorConfig = function( config ) {
      config.language = 'es';
      config.uiColor = '#F7B42C';
      config.height = 300;
      config.toolbarCanCollapse = true;
    };

    CKEDITOR.replace('description', {
        customConfig: '/custom/ckeditor_config.js',

    })
    //bootstrap WYSIHTML5 - text editor
    
  })