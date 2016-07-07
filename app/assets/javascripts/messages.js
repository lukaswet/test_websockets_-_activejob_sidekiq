/* global $ */
/* global Pusher */
$(function(){
    $('#new_message').on('ajax:success', function(xhr, data, status) {
        addMessage(data)
        $('#message_text').val('');
    });
    
    // For Pusher:
    
    // var pusher = new Pusher('44cc9a6cd5c292f42773', {
    //   cluster: 'eu',
    //   encrypted: true
    // });

    // var channel = pusher.subscribe('messages');
    // channel.bind('new', function(data) {
    //   addMessage(data);
    // });
    
});

function addMessage(data) {
    $('#messages_list tbody').append('<tr><td>' + data.text + '</td><td>' + data.username + '</td></tr>');
}