$(function() {
    DIS.NewThread.init();
});
DIS.NewThread = function() {
    var attachments = 1;
    
    return {
        init: function() {
            $('.dis-preview').click(this.preview);
            $('.dis-message-write').click(this.message);
			$("#dis-message-preview").delegate(".dis-message-cancel", "click", this.message);
            $('.dis-cancel-preview').click(this.cancel);
            $('.dis-add-attachment').click(this.addAttachment);
            
        }

        ,preview: function() {
            var f = $('#dis-new-thread-form');
            var p = f.serialize()+'&action=thread/preview';

            var a = $.extend({},DIS.baseAjax,{
                url: DIS.url
                ,async: false
                ,data: p
            });
            var a = $.ajax(a);
            $('#dis-message-preview').hide().html(a.responseText).fadeIn(80);
            if (SyntaxHighlighter) { SyntaxHighlighter.highlight(); }

            $('.dis-message-write').removeClass('selected');
            $('.dis-preview').addClass('selected');
            $('#overlay-20').fadeIn();
            return false;
        }

        ,message: function() {
            $('.dis-preview').removeClass('selected');
            $('.dis-message-write').addClass('selected');
            $('#dis-message-preview').fadeOut(80);
            $('#overlay-20').fadeOut();
            return false;        
        }

        ,cancel: function() {
            $('#dis-message-preview').slideUp('slow');
        }
        
        ,addAttachment: function() {
            var d = $('#dis-attachments');
            var i = attachments+1;
            if (i > DIS.config.attachments_max_per_post) return false;
            var tpl = '<label><span>&nbsp;</span></label><input type="file" name="attachment'+i+'" /><br class="clear" />';
            
            d.append(tpl);
            attachments = attachments+1;
            return false;
        }
    };
}();