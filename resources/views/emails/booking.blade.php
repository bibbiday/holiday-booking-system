@component('mail::message')
# Booking Confirmation

Hi, your booking has been confirmed. Thank you for booking our Holiday Package. 

@component('mail::button', ['url' => 'http://localhost:3000/'])
Visit Website
@endcomponent

Thanks,<br>
Admin Team
<!--{{ config('app.name') }}-->
@endcomponent
