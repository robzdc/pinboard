// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
 


$('#fileupload').fileupload({ 
	filesContainer: $('.files'),
    uploadTemplateId: null,
    downloadTemplateId: null,
	uploadTemplate: function (o) {
        var rows = $();
        $.each(o.files, function (index, file) {
            var row = $('<tr class="template-upload fade">' +
                '<td><span class="preview"></span></td>' +
                '<td><p class="name"></p>' +
                '<div class="error"></div>' +
                '</td>' +
                '<td><p class="size"></p>' +
                '<div class="progress"></div>' +
                '</td>' +
                '<td>' +
                (!index && !o.options.autoUpload ?
                    '<button class="start" disabled>Start</button>' : '') +
                (!index ? '<button class="cancel">Cancel</button>' : '') +
                '</td>' +
                '</tr>');
            row.find('.name').text(file.name);
            row.find('.size').text(o.formatFileSize(file.size));
            if (file.error) {
                row.find('.error').text(file.error);
            }  
            rows = rows.add(row);
        });
        return rows;
    },
});