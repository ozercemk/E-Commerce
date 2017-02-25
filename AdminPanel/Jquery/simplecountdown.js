/***********************************************************************************************************
/	CountDown v1.0.0
/	by Vitor Nascimento - vitor.nascimento.jr@gmail.com
/
/ Example
/ <input id="a" name="a" class="countdown" maxlength='20' /> 
/ $('.countdown').countdown();
**********************************************************************************************************/

(function($) {
	
	$.fn.simplecountdown = function(options) {
		$.fn.simplecountdown.defaults = {
			message: '%1',	// Keep %1 intact when defining custom message. (%1 is replaced by number of characters left.)
			counterElem: 'limit'
		};
			
		var o = $.extend({}, $.fn.simplecountdown.defaults, options);
		
		
		function count(elem, counterElem) {
      counterElem.html(o.message.replace(/%1/, ($(elem).attr('maxlength') - $(elem).val().length)));
		}
	
		return this.each(function(e) {
			var toCheck = $(this);
			
			// If dont exist counterElem .. create
			var label = $(this).parent().find(o.counterElem);
      if(label.length==0){
        label = $("<span class='"+ o.counterElem +"'/>");
        label.insertAfter($(this));
      }
			
			// Check limit upon each of the following events.
			toCheck
				.bind("keydown keypress keyup change focus mouseout mouseover paste", function(e) {
					count(toCheck, label); 
				});
			
			if (toCheck.addEventListener) 
			   toCheck.addEventListener('input', function () { 
			     count(toCheck, label); 
			   }, false);	
			   count(toCheck, label);
		});
		
	}

})(jQuery);



(function($) {

    $.fn.simplecountdown2 = function(options) {
        $.fn.simplecountdown2.defaults = {
            message: '%1', // Keep %1 intact when defining custom message. (%1 is replaced by number of characters left.)
            counterElem: 'limit'
        };

        var o = $.extend({}, $.fn.simplecountdown2.defaults, options);


        function count(elem, counterElem) {
            counterElem.html(o.message.replace(/%1/, ($(elem).attr('maxlength') - $(elem).val().length)));
        }

        return this.each(function(e) {
            var toCheck = $(this);

            // If dont exist counterElem .. create
            var label = $(this).parent().find(o.counterElem);
            if (label.length == 0) {
                label = $("<span class='" + o.counterElem + "'/>");
                label.insertAfter($(this));
            }

            // Check limit upon each of the following events.
            toCheck
				.bind("keydown keypress keyup change focus mouseout mouseover paste", function(e) {
				    count(toCheck, label);
				});

            if (toCheck.addEventListener)
                toCheck.addEventListener('input', function() {
                    count(toCheck, label);
                }, false);
            count(toCheck, label);
        });

    }

})(jQuery);