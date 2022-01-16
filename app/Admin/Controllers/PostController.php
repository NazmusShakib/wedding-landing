<?php

namespace App\Admin\Controllers;

use App\Models\Post;
use App\Models\Tag;
use App\Models\PostCategory;
use Encore\Admin\Controllers\AdminController;
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
        $grid->column('tags', __('Tag'))->display(function ($tags) {
            $tags = array_map(function ($tag) {
                return "<span class='label label-info'>{$tag['name']}</span>";
            }, $tags);
            return join('&nbsp;', $tags);
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
        $form->file('thumbnail')->rules('mimes:jpeg,jpg,mp4,avi')->removable()->downloadable();
        return $form;
    }
}
