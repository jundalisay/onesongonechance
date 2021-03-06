window.ws.onmessage = function(message) {
  var content, current_user, data, sender_email;
  console.log("received: ", message);
  data = JSON.parse(message.data);
  console.log(current_user = $('.currentuser').text());
  content = data.content.split("TKOJ")[1];
  console.log(sender_email = data.content.split("TKOJ")[0]);
  if (sender_email !== current_user) {
    console.log(content = content.replace('ChatLog__entry ChatLog__entry_mine', 'ChatLog__entry'));
  }
  var $chatWrapper = $('.chat-wrapper');
  var $messages = $('.messages');
  switch (data.event) {
    case 'message_create':
            $(content).appendTo('.messages');
            $('.chat-wrapper').scrollTop($('.messages').height());
            
            //$('.chat-wrapper').find('messages').scrollTop($messages.scrollHeight);

        return '';
    case 'message_delete':
      return $('.messages').find(data.content).slideUp(300, function() {
        return $(this).remove();
      });
    default:
      return console.log("unknown event", data.event);
  }
};

// ---
// generated by coffee-script 1.9.2



function startTimer(duration, display) {
    var start = Date.now(),
        diff,
        minutes,
        seconds;
    function timer() {
        // get the number of seconds that have elapsed since 
        // startTimer() was called
        diff = duration - (((Date.now() - start) / 1000) | 0);

        // does the same job as parseInt truncates the float
        minutes = (diff / 60) | 0;
        seconds = (diff % 60) | 0;

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds; 

        if (diff <= 0) {
            // add one second so that the count down starts at the full duration
            // example 05:00 not 04:59
            start = Date.now() + 1000;
        }
    };
    // we don't want to wait a full second before the timer starts
    timer();
    setInterval(timer, 1000);
}

window.onload = function () {
    var fiveMinutes = 60 * 5,
        display = document.querySelector('#time');
    startTimer(fiveMinutes, display);
};

