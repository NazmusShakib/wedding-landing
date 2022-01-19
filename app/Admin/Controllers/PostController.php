<?php

namespace App\Admin\Controllers;

use App\Models\Post;
use App\Models\Tag;
use App\Models\PostCategory;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PostController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Post';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Post());
        $grid->column('id', __('ID'))->sortable();
        $grid->column('thumbnail', __('Thumbnail'))->image(config('app.url').'/storage/', 100, 100);
        $grid->column('post_category_id', __('Category'))->display(function () {
            return $this->category->name;
        });
        /* $grid->column('tags', __('Tag'))->display(function ($tags) {
            $tags = array_map(function ($tag) {
                return "<span class='label label-info'>{$tag['name']}</span>";
            }, $tags);
            return join('&nbsp;', $tags);
        }); */
        $grid->column('title', __('Title'));
        $grid->column("is_published", __("Published"))->display(function ($val) {
            if ($val == 1) {
                return '<span class="label label-success">Yes</span>';
            } else {
                return '<span class="label label-danger">No</span>';
            }
        });
        $grid->column("is_featured", __("Featured"))->display(function ($val) {
            if ($val == 1) {
                return '<span class="label label-success">Yes</span>';
            } else {
                return '<span class="label label-danger">No</span>';
            }
        });
        $grid->column('display_order', __('Display Order'));
        $grid->column('created_at', __('Created at'))->display(function () {
            return date('d/F/Y h:i a', strtotime($this->created_at));
        });

        $grid->disableExport();

        $grid->filter(function ($filter) {
            // Remove the default id filter
            // $filter->disableIdFilter();
            $filter->like("title", "Title");
            $filter->like("category.name", "Category");
            $filter->between('created_at', 'Created At')->datetime();

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
        $show = new Show(Post::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Post());
        $form->select('post_category_id', 'Category')
        ->options(PostCategory::all()->pluck('name','id'));
        $form->multipleSelect('tags','Tag')->options(Tag::all()->pluck('name','id'));
        $form->text('title', 'Title')->rules('required|max:255');
        $form->quill('body');
        $form->file('thumbnail')->rules('mimes:png,jpeg,jpg,mp4,avi')
            ->required()->uniqueName()->removable()->downloadable();
        $form->number('display_order',  __("Display Order"))->default(99999)->required();
        $form->switch('is_featured', __("Is Featured"));
        $form->switch('is_published', __("Is Published"));
        $form->hidden("created_by")->default(Admin::user()->id);
        return $form;
    }
}
