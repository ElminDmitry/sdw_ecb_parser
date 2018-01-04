$( "#refresh-but" ).click(function() {
    event.preventDefault();
    $.get( "amounts/refresh", function( data ) {

        $("#amounts").empty();
        $("#amounts").html( data );
        alert("updated!");
    });
    $( "#refresh-but" ).prop('disabled', true);
});

$( "#select-but" ).click(function() {
    event.preventDefault();
    var dateRange = $(".date-picker").map(function(i, el) {
        if(el.value.length > 0) { return el.value }
    });
    $.get( "amounts/filter", { value: $("#value").val(), date_range: dateRange.toArray() } )
        .done(function( data ) {
            $("#selceted-amounts").empty();
            $("#selceted-amounts").html( data );
            alert("updated!");
        });

    $( "#refresh-but" ).prop('disabled', true);
});
