f(x) = x+1
f(2)

using Plots, Random
plot(1:5, rand(5))

function plot_results()
    x = 1:5
    y = f.(x)
    plot(x,y)
    print(y)
end

plot_results()

using PkgTemplates
t = Template(;dir = ".", julia = v"1.9",
                plugins = [
                    Git(; manifest = true, branch = "main"),
                    Codecov(),
                    GitHubActions(),
                    !CompatHelper,
                    !TagBot
                ])

t("MyProject")
