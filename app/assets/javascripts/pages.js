// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(document).ready(function()
{
    $('#students_button').mouseenter(function()
    {
        $('#students_shade').fadeOut('fast')
    });
    $('#students_button').mouseleave(function()
    {
        $('#students_shade').fadeIn('fast')
    });
});    
$(document).ready(function()
{
    $('#business_button').mouseenter(function()
    {
        $('#business_shade').fadeOut('fast')
    });
    $('#business_button').mouseleave(function()
    {
        $('#business_shade').fadeIn('fast')
    });
});
