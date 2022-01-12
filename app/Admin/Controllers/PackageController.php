<?php

namespace App\Admin\Controllers;

use App\Models\Package;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PackageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Package';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Package());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('name', __('Name'));
        $grid->column('price', __('Price'))->display(function () {
            return number_format($this->price, 0). '৳';
        });
        $grid->column('created_at', __('Created at'))->display(function () {
            return date('d/F/Y h:i a', strtotime($this->created_at));
        });
        $grid->column('updated_at', __('Updated at'))->display(function () {
            return date('d/F/Y h:i a', strtotime($this->updated_at));
        });
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
        $show = new Show(Package::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Package());
        $form->text('name', 'Name')->rules('required|max:255');
        $form->list('includes', 'Package Includes');
        $form->text('price', 'Price')->rules('required|numeric');
        $form->quill('body');
        return $form;
    }
}
