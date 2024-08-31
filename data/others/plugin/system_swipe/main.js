(function() {
	const hide_button = TYRANO.kag.stat.mp.hide_button !== "false"
	const iframe_scroll = TYRANO.kag.stat.mp.iframe_scroll !== "false"

	//iframe実行時、ホイールによるページスクロールを無効にする
	if (iframe_scroll) {
		$('#tyrano_base').bind('wheel',function(e){e.preventDefault();});
	}

	const _setMenu = TYRANO.kag.menu.setMenu;
	TYRANO.kag.menu.setMenu = function (j_obj, cb) {

		j_obj.find(".area_save_list").on('touchmove wheel', (e) => {
			e.stopPropagation();
		});

		j_obj.find(".save_display_area").each(function() {
			const _events = $(this).data('events')

			if (_events && _events.tap) {
				const _hand = _events.tap[0].handler
				if (_hand) {
					$(this).off().on('click', (e) => {
						_hand.call(this, e);
					});
				}
			}
		});
		
		if (hide_button) {
			j_obj.find(".button_smart").remove();
		}

		_setMenu.apply(this, arguments);
		
	}


	const _displayLog = TYRANO.kag.menu.displayLog;
	TYRANO.kag.menu.displayLog = function(cb){
		_displayLog.apply(this, arguments);

		let a = setInterval(function(){
			if ($(".log_body").length > 0) {
				$(".log_body").on('touchmove wheel', (e) => {
					e.stopPropagation();
				});

				if (hide_button) {
					$(".button_smart").remove();
				}

				if ($("#touchbox").length > 0) {
					$("#touchbox").attr("id","");
				}

				clearInterval(a);
			}
		} , 20);

		setTimeout(function(){
			clearInterval(a);
		}, 5000);
	}

})();
