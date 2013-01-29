$(function() {
	/*var faye = new Faye.Client('http://pdhar-faye-server.herokuapp.com/faye');
	 faye.subscribe('/messages/new', function (data) {
	 alert(data);
	 });*/
	
	message = {};
	message.add = function (peer, msg) { 
		//alert('inside function! ');
		var msgObject = {
    		channel: "/messages/new",
        	data: msg,
            ext: {
                auth_token: "anything"
            },
    		error: "a"
		};
		
		var publication = client.publish('/messages/new', msgObject);
		
		//box.chatbox("options").messageSent(null, null, null);
		return("hello world!!!");
	}
	
	var client = new Faye.Client('http://pdhar-faye-server.herokuapp.com/faye');
	
	subscription = client.subscribe('/messages/new', function(message) {
		// handle message
		//alert( "message "+ message['data'] + ' ' + JSON.stringify(message) + message['ext']['auth_token'] );
		
		box.chatbox("option", "boxManager").msgAdd("user", message['data']);
	});
	
	//var publication = client.publish('/messages/new', {channel:'/messages/new',data:'hello from chatbox',ext:{auth_token:'anything'}});
	subscription.callback(function() {
	  //alert('Subscription is now active!');
	});
	
	subscription.errback(function(error) {
	  alert(error.message);
	});
			
				
	$("#test_chat").click(function(event, ui) {
		
		
		var msgObject = {
    		channel: "/messages/new",
        	data:"hello",
            ext: {
                auth_token: "anything"
            },
    		error: "a"
		};
		
		var publication = client.publish('/messages/new', msgObject);
		
		publication.callback(function() {
		  //alert('Message received by server!');
		});
		
		publication.errback(function(error) {
		  //alert('There was a problem: ' + error.message);
		});
		
	});	
	
	function SendFayeMessage(message){
		
		alert('inside function! ');
	};
				
}); 