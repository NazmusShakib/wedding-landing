@if($clients->count() > 0)
<div class="clients-section clients">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 owl-carousel owl-theme">
                @foreach($clients as $client)
                <div class="client-logo">
                    <a href="{{ $client->btn_url }}"
                        ><img
                            src="{{ Storage::url($client->thumbnail) }}"
                            alt="{{ $client->title }}"
                    /></a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endif
