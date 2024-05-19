@component('mail::message')
<div style="text-align:center;min-width:640px;width:100%;height:100%;font-family:'Arial', sans-serif;background-color:#fafafa;padding:20px">
    <div style="background-color:#ffffff;padding:20px;border:1px solid #ededed;width:600px;margin:0 auto;text-align:left">
        
        <p><strong>{{ $details['title'] }}</strong></p>
        <p>Gig ID: {{ $details['url'] }}</p>
       
        <p style="margin-top:20px;text-align:center;color:#5c5c5c">You're receiving this email because of your account on <a href="https://yourplatform.com" style="color:#3777b0;text-decoration:none" target="_blank">Our Platform</a>.</p>
    </div>
</div>

@endcomponent

