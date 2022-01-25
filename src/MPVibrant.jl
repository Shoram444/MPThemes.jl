"""
my_vibrant(;kwargs)
Description of ```my_vibrant```
------------------------------
sets custom theme for Plots.
    
    If no keyword arguments are provided, the default has the following attributes:

+ :vibrant,
+ left_margin = 8Plots.mm,
+ right_margin = 8Plots.mm,
+ top_margin  = 8Plots.mm,
+ bottom_margin  = 8Plots.mm,
+ framestyle = :frame,
+ size = (1200,600),
+ dpi = 200,
+ titlefontsize = 24
+ guidefontsize = 16
+ tickfontsize  = 16
+ legendfontsize= 16
+ formatter = :auto 
+ legend = :outertopright,
+ gridalpha = 0.05,
+ minorticks = :true,



-------------------------------
    To change any of the default arguments, simply use the standard <keyword = value>
(i.e.) my_vibrant(color = red)
"""
function  my_vibrant(;kwargs...)
    ## default values for the plotting style
    plot_args = Dict(
         :left_margin => 8Plots.mm,
         :right_margin => 8Plots.mm,
         :top_margin  => 8Plots.mm,
         :bottom_margin  => 8Plots.mm,
         :framestyle => :frame,
         :size => (1200,600),
         :dpi => 200,
         :titlefontsize => 24
         :guidefontsize => 16
         :tickfontsize  => 16
         :legendfontsize=> 16
         :formatter => :auto 
         :legend => :outertopright,
         :gridalpha => 0.05,
         :minorticks => :true,
        )

    ## checks if kwargs are provided
    if length(kwargs) == 0                ## if no kwargs are provided, use my default theme
        Plots.theme(:vibrant; plot_args...)
    else                                  ## if there are kwargs, they are unpacked using keys() 
        kwarg_names = keys(kwargs)        ## and iterated over to change the default dictionary <plot_args>
        for key in kwarg_names
            plot_args[key] = kwargs[key]
        end
        Plots.theme(:vibrant; plot_args...)
    end
end