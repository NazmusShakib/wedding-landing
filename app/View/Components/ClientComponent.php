<?php

namespace App\View\Components;

use App\Models\Client;
use Illuminate\View\Component;

class ClientComponent extends Component
{

    protected $clients;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->clients = Client::published()->displayOrderd()->get();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.client-component')->with('clients', $this->clients);
    }
}
