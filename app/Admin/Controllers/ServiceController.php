<?php

namespace App\Admin\Controllers;

use App\Models\Service;
use App\Models\ServiceCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ServiceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Service';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Service());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('thumbnail', __('Thumbnail'))->image(config('app.url').'/storage/', 100, 100);
        $grid->column('service_category_id', __('Category'))->display(function () {
            return $this->category->name;
        });
        $grid->column('title', __('Title'));
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
        $show = new Show(Service::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Service());
        $form->select('service_category_id', 'Category')->options(ServiceCategory::all()->pluck('name','id'));
        $form->text('title', 'Title')->rules('required|max:255');
        $form->quill('body');
        $form->file('thumbnail')->rules('mimes:jpeg,jpg,mp4,avi')->removable()->downloadable();
        return $form;
    }
}
