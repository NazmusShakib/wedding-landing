@if ($paginator->hasPages())
@php
    $search = request('title');
    $category = request('category');
    $tag = request('tag');
    $queryString = '';
    if(!empty($search)){
        $queryString .='&title='.$search;
    }

    if(!empty($category)){
        $queryString .='&category='.$category;
    }

    if(!empty($tag)){
        $queryString .='&tag='.$tag;
    }
@endphp
    <nav>
        <ul class="pwe-pagination-wrap align-center">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="disabled" aria-disabled="true" aria-label="@lang('pagination.previous')">
                    <a href="javascript:void(0)"><i class="ti-arrow-left"></i></a>
                </li>
            @else
                <li>
                    <a href="{{ $paginator->previousPageUrl() }}{{ $queryString }}" rel="prev" aria-label="@lang('pagination.previous')"><i class="ti-arrow-left"></i></a>
                </li>
            @endif

            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <li class="disabled" aria-current="page"><a href="javascript:void(0)" class="active">{{ $page }}</a></li>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li class="disabled" aria-current="page"><a href="javascript:void(0)" class="active">{{ $page }}</a></li>
                        @else
                            <li><a href="{{ $url }}{{ $queryString }}">{{ $page }}</a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <li><a href="{{ $paginator->nextPageUrl() }}{{ $queryString }}" rel="next" aria-label="@lang('pagination.next')"><i class="ti-arrow-right"></i></a></li>
            @else
                <li class="disabled"><a href="javascript:void(0)" rel="next" aria-label="@lang('pagination.next')"><i class="ti-arrow-right"></i></a></li>
            @endif
        </ul>
    </nav>
@endif
