using TKCBED
using Documenter

DocMeta.setdocmeta!(TKCBED, :DocTestSetup, :(using TKCBED); recursive=true)

makedocs(;
    modules=[TKCBED],
    authors="Chen Huang",
    repo="https://github.com/chenspc/TKCBED.jl/blob/{commit}{path}#{line}",
    sitename="TKCBED.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://chenspc.github.io/TKCBED.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/chenspc/TKCBED.jl",
    devbranch="main",
)
