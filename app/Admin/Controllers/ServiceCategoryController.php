<?php

namespace App\Admin\Controllers;

use App\Models\ServiceCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ServiceCategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'ServiceCategory';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ServiceCategory());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('name', __('Title'));
        $grid->column('total_services', __('Total Services'))->display(function () {
            return $this->services->count();
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
        $show = new Show(ServiceCategory::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ServiceCategory());
        $form->text('name', 'Name')->rules('required|max:255');
        return $form;
    }
}
