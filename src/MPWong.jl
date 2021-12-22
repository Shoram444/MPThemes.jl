
"""
    my_theme()
Description of ```my_theme```
------------------------------
sets custom theme for Plots with the following attributes:

    + :wong2,
    + legend =:false,
    + left_margin = 6Plots.mm,
    + right_margin = 12Plots.mm,
    + top_margin  = 4Plots.mm,
    + bottom_margin  = 6Plots.mm,
    + framestyle = :box,
    + grid = :off,
    + size = (1200,600),
    + dpi = 400,
    + color = "blue"
    

Other methods: 
    + my_theme(_size::Tuple{Int64, Int64})
    + my_theme(_l::AbsoluteLength, _r::AbsoluteLength,_t::AbsoluteLength,_b::AbsoluteLength)
    + my_theme(_legend::Symbol)
    + my_theme(_size::Tuple{Int64, Int64} ,_l::AbsoluteLength, _r::AbsoluteLength,_t::AbsoluteLength,_b::AbsoluteLength)
    + my_theme(_legend::Symbol ,_l::AbsoluteLength, _r::AbsoluteLength,_t::AbsoluteLength,_b::AbsoluteLength)
    + my_theme(_legend::Symbol ,_size::Tuple{Int64, Int64})
    + my_theme(_legend::Symbol, _size::Tuple{Int64, Int64} ,_l::AbsoluteLength, _r::AbsoluteLength,_t::AbsoluteLength,_b::AbsoluteLength)
"""
function my_theme()
    return Plots.theme(:wong2,
                        legend =:false,
                        left_margin = 6Plots.mm,
                        right_margin = 6Plots.mm,
                        top_margin  = 4Plots.mm,
                        bottom_margin  = 6Plots.mm,
                        framestyle = :box,
                        grid = :off,
                        size = (800,400),
                        dpi = 400,
                        color = "blue"
                        )
end

function my_theme(_size::Tuple{Int64, Int64})
    return Plots.theme(:wong2,
                        legend =:false,
                        left_margin = 6Plots.mm,
                        right_margin = 6Plots.mm,
                        top_margin  = 4Plots.mm,
                        bottom_margin  = 6Plots.mm,
                        framestyle = :box,
                        grid = :off,
                        size = _size,
                        dpi = 400,
                        color = "blue"
                        )
end

function my_theme(_l::Plots.Measures.Length{:mm, Float64}, _r::Plots.Measures.Length{:mm, Float64},_t::Plots.Measures.Length{:mm, Float64},_b::Plots.Measures.Length{:mm, Float64})
    return Plots.theme(:wong2,
                        legend =:false,
                        left_margin = _l,
                        right_margin = _r,
                        top_margin  = _t,
                        bottom_margin  = _b,
                        framestyle = :box,
                        grid = :off,
                        size = (800,400),
                        dpi = 400,
                        color = "blue"
                        )
end

function my_theme(_legend::Symbol)
    return Plots.theme(:wong2,
                        legend =_legend,
                        left_margin = 6Plots.mm,
                        right_margin = 6Plots.mm,
                        top_margin  = 4Plots.mm,
                        bottom_margin  = 6Plots.mm,
                        framestyle = :box,
                        grid = :off,
                        size = (800,400),
                        dpi = 400,
                        color = "blue"
                        )
                    end

function my_theme(_size::Tuple{Int64, Int64} ,_l::Plots.AbsoluteLength, _r::Plots.AbsoluteLength,_t::Plots.AbsoluteLength,_b::Plots.AbsoluteLength)
    return Plots.theme(:wong2,
                        legend =:false,
                        left_margin = _l,
                        right_margin = _r,
                        top_margin  = _t,
                        bottom_margin  = _b,
                        framestyle = :box,
                        grid = :off,
                        size = _size,
                        dpi = 400,
                        color = "blue"
                        )
end

function my_theme(_legend::Symbol ,_l::Plots.AbsoluteLength, _r::Plots.AbsoluteLength,_t::Plots.AbsoluteLength,_b::Plots.AbsoluteLength)
    return Plots.theme(:wong2,
                        legend =_legend,
                        left_margin = 6Plots.mm,
                        right_margin = 6Plots.mm,
                        top_margin  = 4Plots.mm,
                        bottom_margin  = 6Plots.mm,
                        framestyle = :box,
                        grid = :off,
                        size = (800,400),
                        dpi = 400,
                        color = "blue"
                        )
end

function my_theme(_legend::Symbol ,_size::Tuple{Int64, Int64})
    return Plots.theme(:wong2,
                        legend =_legend,
                        left_margin = 6Plots.mm,
                        right_margin = 6Plots.mm,
                        top_margin  = 4Plots.mm,
                        bottom_margin  = 6Plots.mm,
                        framestyle = :box,
                        grid = :off,
                        size = _size,
                        dpi = 400,
                        color = "blue"
                        )
end

function my_theme(_legend::Symbol, _size::Tuple{Int64, Int64} ,_l::Plots.AbsoluteLength, _r::Plots.AbsoluteLength,_t::Plots.AbsoluteLength,_b::Plots.AbsoluteLength)
    return Plots.theme(:wong2,
                        legend =_legend,
                        left_margin = _l,
                        right_margin = _r,
                        top_margin  = _t,
                        bottom_margin  = _b,
                        framestyle = :box,
                        grid = :off,
                        size = _size,
                        dpi = 400,
                        color = "blue"
                        )
end
