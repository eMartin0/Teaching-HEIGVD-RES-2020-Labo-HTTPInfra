// When the library is loaded, excecute this function
$(function() {
    console.log("Loading random data");

    function loadRandomData() {
        $.getJSON("/random/", function(data){
            if(data.length > 0){
                console.log(data);
                $("h3#asynchrone").text(data[0].title);
                $("p#asynchrone").text(data[1].content + ' Author : ' + data[1].author);
            }else{
                console.log("No data");
            }
        });

    }; // end loadRandom function

    setInterval( loadRandomData, 8000);

}); // end asychronous function
