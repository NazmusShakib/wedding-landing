<?php

namespace App\Admin\Controllers;

use App\Models\Client;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ClientController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Clients';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Client());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('title', __('Title'));
        $grid->column('display_order', __('Display order'));
        $grid->column('is_published', __('Is show'));
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Client::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Client());
        $form->text('title', 'Title')->rules('max:255')->required()->help('Ex. Client name');
        $form->file('thumbnail')->rules('mimes:jpeg,jpg')
            ->required()->uniqueName()->removable()->downloadable()->help('Size: 179x139 px');
        $form->url('btn_url', 'Button Url')->default('');
        $form->number('display_order',  __("Display Order"))->default(99999)->required();
        $form->switch('is_published', __("Is Show"))->default(false);
        return $form;
    }
}
