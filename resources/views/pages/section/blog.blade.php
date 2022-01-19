<div class="blog-section blog pt-90 pb-90">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mb-30"> <span class="heading-meta">read blog</span>
                <h2 class="pwe-heading animate-box" data-animate-effect="fadeInLeft">Latest News</h2>
            </div>
        </div>
        <div class="row">
            @foreach($latestPosts as $post)
            <div class="col-md-4">
                <div class="item mb-30 animate-box" data-animate-effect="fadeInLeft">
                    <div class="post-img"> <img src="{{ Storage::url($post['thumbnail']) }}" alt="{{ $post['title'] }}">
                        <div class="date">
                            <a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}"> <span>{{ date('M', strtotime($post['created_at'])) }}</span> <i>{{ date('d', strtotime($post['created_at'])) }}</i> </a>
                        </div>
                    </div>
                    <div class="content"> <span class="tag">
                            <a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}">{{ $post['category']['name'] }}</a>
                        </span>
                        <h5><a href="{{ route('post.details', [$post['id'], str_slug($post['title'])]) }}">{{ $post['title'] }}</a></h5>
                        <p>{{ substr(strip_tags($post['body']),0,115) . "..."; }}</p>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>