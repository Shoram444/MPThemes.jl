"""
my_wong(;kwargs)
Description of ```my_wong```
------------------------------
sets custom theme for Plots.
    
    If no keyword arguments are provided, the default has the following attributes:

+ :wong2,
+ legend =:false,
+ left_margin = 6Plots.mm,
+ right_margin = 6Plots.mm,
+ top_margin  = 4Plots.mm,
+ bottom_margin  = 6Plots.mm,
+ framestyle = :box,
+ grid = :off,
+ size = (800,400),
+ dpi = 200,
+ color = "blue"

-------------------------------
    To change any of the default arguments, simply use the standard <keyword = value>
(i.e.) my_wong(color = red)
"""
function  my_wong(;kwargs...)
    ## default values for the plotting style
    plot_args = Dict(:legend       => :false,
        :left_margin   => 6Plots.mm,
        :right_margin  => 6Plots.mm,
        :top_margin    => 4Plots.mm,
        :bottom_margin => 6Plots.mm,
        :framestyle    => :box,
        :grid          => :off,
        :size          => (800,400),
        :dpi           => 200,
        :color         => "blue"
        )

    ## checks if kwargs are provided
    if length(kwargs) == 0                ## if no kwargs are provided, use my default theme
        Plots.theme(:wong2; plot_args...)
    else                                  ## if there are kwargs, they are unpacked using keys() 
        kwarg_names = keys(kwargs)        ## and iterated over to change the default dictionary <plot_args>
        for key in kwarg_names
            plot_args[key] = kwargs[key]
        end
        Plots.theme(:wong2; plot_args...)
    end
end