<?php

namespace App\Admin\Controllers;

use App\Models\Portfolio;
use App\Models\Package;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PortfolioController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Portfolio';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Portfolio());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('thumbnail', __('Thumbnail'))->image(config('app.url').'/storage/', 100, 100);
        $grid->column('package_id', __('Package'))->display(function () {
            return $this->package->name;
        });
        $grid->column('name', __('Name'));
        $grid->column('event_planner', __('Planner Name'));
        $grid->column('photographer_name', __('Photographer Name'));
        $grid->column('location', __('Location'));
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
        $show = new Show(Portfolio::findOrFail($id));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Portfolio());
        $form->select('package_id', 'Package')->rules('required')
            ->options(Package::all()->pluck('name','id'));
        $form->text('name', 'Name')->rules('required|max:255');
        $form->text('event_planner', 'Planner Name');
        $form->text('photographer_name', 'Photographer Name');
        $form->text('location', 'Location')->rules('required|max:255');
        $form->textarea('description')->rules('required')->rows(5);
        $form->file('thumbnail')->rules('required|mimes:jpeg,jpg,png')
            ->uniqueName()->removable()->downloadable();
        $form->list('videos', 'Videos');
        $form->multipleImage('pictures')->rules('mimes:jpeg,jpg,png')
            ->uniqueName()->removable()->downloadable();
        return $form;
    }
}
