//Tooltip Hover Effect//

function simple_tooltip(target_items, name){
 $(target_items).each(function(i){
		$("body").append("<div class='"+name+"' id='"+name+i+"'><p>"+$(this).attr('title')+"</p></div>");
		var my_tooltip = $("#"+name+i);
		
		$(this).removeAttr("title").mouseover(function(){
				my_tooltip.css({display:"none"}).fadeIn(10);
		}).mousemove(function(kmouse){
				my_tooltip.css({left:kmouse.pageX+10, top:kmouse.pageY+0});
		}).mouseout(function(){
				my_tooltip.fadeOut(10);				  
		});
	});
}

	
$(document).ready(function(){
	 simple_tooltip(".quantity a img","tooltip");
	 simple_tooltip(".jcarousel-skin-opencart img","tooltip");
});

// Scroll top Top //

(function(){
    
    var special = jQuery.event.special,
        uid1 = 'D' + (+new Date()),
        uid2 = 'D' + (+new Date() + 1);
        
    special.scrollstart = {
        setup: function() {
            
            var timer,
                handler =  function(evt) {
                    
                    var _self = this,
                        _args = arguments;
                    
                    if (timer) {
                        clearTimeout(timer);
                    } else {
                        evt.type = 'scrollstart';
                        jQuery.event.handle.apply(_self, _args);
                    }
                    
                    timer = setTimeout( function(){
                        timer = null;
                    }, special.scrollstop.latency);
                    
                };
            
            jQuery(this).bind('scroll', handler).data(uid1, handler);
            
        },
        teardown: function(){
            jQuery(this).unbind( 'scroll', jQuery(this).data(uid1) );
        }
    };
    
    special.scrollstop = {
        latency: 300,
        setup: function() {
            
            var timer,
                    handler = function(evt) {
                    
                    var _self = this,
                        _args = arguments;
                    
                    if (timer) {
                        clearTimeout(timer);
                    }
                    
                    timer = setTimeout( function(){
                        
                        timer = null;
                        evt.type = 'scrollstop';
                        jQuery.event.handle.apply(_self, _args);
                        
                    }, special.scrollstop.latency);
                    
                };
            
            jQuery(this).bind('scroll', handler).data(uid2, handler);
            
        },
        teardown: function() {
            jQuery(this).unbind( 'scroll', jQuery(this).data(uid2) );
        }
    };
    
})();

$(function(){

//Image Hover Fade Effect//

$('.image img').hover(function(){
		this.check = this.check || 1;
		$(this).stop().fadeTo('slow',this.check++%2==0 ? 1 : 0.6	);
	});
});


<!-- Top To Bottom -->
			$(function() {
				var $elem = $('#content');
				
				$('#nav_up').fadeIn('slow');
				$('#nav_down').fadeIn('slow');  
				
				$(window).bind('scrollstart', function(){
					$('#nav_up,#nav_down').stop().animate({'opacity':'0.2'});
				});
				$(window).bind('scrollstop', function(){
					$('#nav_up,#nav_down').stop().animate({'opacity':'1'});
				});
				
				$('#nav_down').click(
					function (e) {
						$('html, body').animate({scrollTop: $elem.height()}, 800);
					}
				);
				$('#nav_up').click(
					function (e) {
						$('html, body').animate({scrollTop: '0px'}, 800);
					}
				);
            });

//Popup Background Effect//

			$(document).ready(function() {
					$(".wishlist, .compare").click(function () {
					$(".slide_black_overlay, .overlay_loading").show();
					setTimeout(function() {
						$(".overlay_loading").hide('fade', {}, 500)
					}, 500);
					});

			$('.success img').live('click', function() {
				$('.slide_black_overlay').fadeOut('slow', function() {
					$('.slide_black_overlay').hide();
				});
			});
			
			$('.success img').live('click', function() {
				$('.overlay_loading').fadeOut('slow', function() {
					$('.overlay_loading').hide();
				});
			});	
					

			$(".button").click(function () {
			$(".slide_black_overlay, .overlay_loading").show('slide', {}, 700);
			setTimeout(function() {
				$(".slide_black_overlay, .overlay_loading").hide('fade', {}, 500)
			}, 1000);
			
			});
			
			});

//Product List Rollover Effect//

function SimpleSwap(el,which){
  el.src=el.getAttribute(which || "origsrc");
}

function SimpleSwapSetup(){
  var x = document.getElementsByTagName("img");
  for (var i=0;i<x.length;i++){
    var oversrc = x[i].getAttribute("oversrc");
    if (!oversrc) continue;
      
    // preload image
    // comment the next two lines to disable image pre-loading
    x[i].oversrc_img = new Image();
    x[i].oversrc_img.src=oversrc;
    // set event handlers
    x[i].onmouseover = new Function("SimpleSwap(this,'oversrc');");
    x[i].onmouseout = new Function("SimpleSwap(this);");
    // save original src
    x[i].setAttribute("origsrc",x[i].src);
  }
}

var PreSimpleSwapOnload =(window.onload)? window.onload : function(){};
window.onload = function(){PreSimpleSwapOnload(); SimpleSwapSetup();}


//Twitter Ticker//

	function tick(){
		$('#twitter-feed li:first').slideUp( function () { $(this).appendTo($('#twitter-feed')).slideDown(); });
	}
	setInterval(function(){ tick () }, 5000);

// Radio Button

	$(function() {	$( "#radio" ).buttonset();	});
	
// Checbox Button

	$(function() {
		$( "#check" ).button();
		$( "#checkbox" ).buttonset();
	});
	
	$(document).ready(function(){     
	$('.opt-img img').click(function() {
	$(".opt-img-i").removeClass("opt-img-i");
	$(this).addClass("opt-img-i");});
	});
	
	$(document).ready(function(){     
	$(".image-additional a img:first").addClass("selected-i");
	$('.image-additional a img').click(function() {
	$(".selected-i").removeClass("selected-i");
	$(this).addClass("selected-i");});
	});