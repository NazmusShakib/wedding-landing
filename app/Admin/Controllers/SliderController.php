<?php

namespace App\Admin\Controllers;

use App\Models\Slider;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SliderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Slider';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Slider());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('short_title', __('Short Title'));
        $grid->column('thumbnail_type')->display(function ($thumbnail_type, $column){
            if($this->thumbnail_type == 0) {
                return 'Image';
            }else{
                return 'Video';
            }
        });
        $grid->column('title', __('Title'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
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
        $show = new Show(Slider::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Slider());
        $form->radio('thumbnail_type', 'Thumbnail')->options(['0' => 'Image', '1'=> 'Video'])->default('0');
        $form->text('short_title', 'Short Title')->rules('required|max:25');
        $form->text('title', 'Title')->rules('required|max:255');
        $form->textarea('description')->rules('required|max:255')->rows(5);
        $form->file('thumbnail')->rules('mimes:jpeg,jpg,mp4,avi')->removable()->downloadable();
        $form->text('btn_title', 'Button Title')->rules('max:10');
        $form->url('btn_url', 'Button Url')->default('');
        return $form;
    }
}
