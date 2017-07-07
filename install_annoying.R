fury <- c(
    'tigris',
    'tmap'
)

tryCatch({
    install.packages(fury)
}, error = function(e) {
    stop('R is not being nice')
    quit(save = "no", status = 1)
})

print("Finished Installing")

for (p in cran_pkgs){
    print(sprintf('Loading: %s', p))
    tryCatch({
        library(p, character.only = TRUE)
    }, error = function(e) {
        stop('R is not being nice')
        quit(save = "no", status = 1)
    })
}
