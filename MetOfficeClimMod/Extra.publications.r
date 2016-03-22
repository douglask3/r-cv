###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')

###############################################################
## Head                                                      ##
###############################################################
Top = NULL


###############################################################
## Basic Infomation                                          ##
###############################################################
Name    = c("Douglas Kelley",
            post,
            'Publication & Presentation List')

Contact = NULL

Authors = c("DI Kelley", "D Kelley")

Published = MakePublicationDocument.Rlist(usrID, NULL)

replaceAuthor <- function(pub) {
    if (pub[1] == "P Ciais, A Tagliabue, M Cuntz, L Bopp, M Scholze, G Hoffmann, ...")
        pub[1] =  "P Ciais, A Tagliabue, M Cuntz, L Bopp, Marko Scholze, G Hoffmann, A Lourantou, Sandy P Harrison, IC Prentice, DI Kelley, C Koven, SL Piao"

    if (pub[1] == "T Kaminski, W Knorr, G Schürmann, M Scholze, PJ Rayner, S Zaehle, ...")
        pub[1] =  "T Kaminski, W Knorr, G Schürmann, M Scholze, PJ Rayner, S Zaehle, S Blessing, W Dorigo, V Gayler, R Giering, N Gobron, JP Grant, M Heimann, A Hooker‐Stroud, S Houweling, T Kato, J Kattge, DI Kelley, S Kemp, EN Koffi, C Köstler, P‐P Mathieu, B Pinty, C H Reick, C Rödenbeck, R Schnur, K Scipal, C Sebald, T Stacke, A Terwisscha Scheltinga, M Vossbeck, H Widmann, T Ziehn"

    if (pub[1] == "S Harrison, J Midgley, B Hoffmann, I Radford, C Nano, B Murphy10, ...")
        pub[1] =  "S Harrison, J Midgley, B Hoffmann, I Radford, C Nano, B Murphy, R Gunton, D Kelley, G Hempson"

    return(pub)
}

Published = lapply(Published, replaceAuthor)

#Published = c(Published[1:6], "New Page", Published[7:length(Published)])

Publications = list(Name = "Publications",
                    Main = MakeUserProfile(usrID, 'unformatted'),
                    c("Published Papers",
                         Published),

                    list("Submitted",

                         c("SP Harrison, DI Kelley,",
                           "Projected changes in Australian fire regimes during the 21<sup>st</sup> century and consequences for ecosystems",
                           "International Journal of Wildland Fire",
                           "",
                           "",
                           ""),

                         c("S Hantson, A Arneth, SP Harrison, DI Kelley, IC Prentice, SS Rabin, S Archibald. ...",
                           "The status and challenge of global fire modelling",
                           "Biogeosciences",
                           "bg-2016-17",
                           "2016",
                           ""),

                        "New Page",

                         c("A Ukkola, T Keenan, DI Kelley, IC Prentice",
                           "Vegetation buffers the water-resource impacts of environmental change in regions with declining precipitation",
                           "Environmental Research Letters",
                           "ERL-102203",
                           "",
                           "")),

                    list("In Prep",

                         c("DI Kelley, M de Kauwe, B Medlyn",
                           "Testing allocation strategies in a simple ecosystem model",
                           "",
                           "",
                           "",
                           ""),

                         c("SP Harrison, DI Kelley, H Wang, A Herbert, G Li, R Bradstock, J Fontaine, N Enright, BP Murphy, BK Pekin, T Penman, J Russell-Smith, RS Wittkuhn",
                           "Patterns in the abundance of post-fire resprouting in Australia based on plot-level measurements.",
                           "",
                           "",
                           "",
                           ""),

                         c("R Whitley, DI Kelley, M de Kauwe, TF Keenan",
                           "Phendulum - A first principles model of describing savanna phenology",
                           "",
                           "",
                           "",
                           ""),
                         c("S Hantson, SP Harrison, DI Kelley, ...",
                           "The Fire Modeling Intercomparison Project (FireMIP): Observational comparisons and model evaluation",
                           "",
                           "",
                           "",
                           "")))
Software    =  list(Name = "Software libraries and packages",
                    list("Open source",
                         c("DI Kelley, R. Whitley",
                           "gitBasedProjects: Extra functions for integrating with git based projects",
                           "R package version 3.10",
                           "http://douglask3.github.io/tools",
                           "2016",
                           ""),
                          c("DI Kelley",
                            "benchmarkMetrics: Benchmark Metrics",
                            "R package version 2.0",
                            "http://douglask3.github.io/tools",
                            "2015",
                            "")),
                    list("In Prep.",
                         c("DI Kelley",
                           "rasterExtras: Extra Raster Functions",
                           "R package version 1.0",
                           ""
                           ""
                           ""),
                         c("DI Kelley",
                           "rasterPlot: Raster Plotting functions",
                           "R package version 1.0",
                           ""
                           ""
                           "")))

Conferences =  list(Name = "Conferences",
                    list("Conference Presentations & Posters",

                         c("DI Kelley, SP Harrison, IC Prentice",
                           "Implications of introducing realistic fire response traits in a Dynamic Global Vegetation Model",
                           "AGU Fall Meeting - Presentation Abstracts",
                           "1,  p.6.",
                           "Dec 2013",
                           ""),

                         c("DI Kelley, SP Harrison",
                           "Comparison of simulated fire regimes at the Last Glacial Maximum and Mid-Holocene with charcoal data",
                           "QUEST: Quantifying and Understanding the Earth System Open Science Conference and Annual Science Meeting",
                           "Department of Earth Sciences, University of Bristol",
                           "Mar 2008",
                           "")),

                    list("Visits and Internal Presentations",

                         c("DI Kelley, SP Harrison, IC Prentice, BE Medlyn",
                           "Modelling Australian Fire Regimes",
                           "Thesis completion seminar",
                           "Macquarie University, Ryde, Australia",
                           "Mar 2015",
                           ""),

                         c("DI Kelley, SP Harrison, IC Prentice",
                           "The LPX fire-enabled Vegetation Model",
                           "visit to Centre for Environmental Risk Management of Bushfires",
                           "University of Wollongong, NSW, Australia",
                           "May 2013",
                           ""),

                         c("DI Kelley, SP Harrison, IC Prentice, B Medlyn",
                           "The effects of climate change on Australian fire regimes",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2012",
                           ""),

                         c("DI Kelley",
                           "Development of lightning ignitions scheme in LPX-DGVM",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Sep 2012",
                           ""),

                         c("DI Kelley",
                           "Benchmarking the LPX-DGVM",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Mar 2012",
                           ""),

                         c("DI Kelley, IC Prentice, H Wang, K Wills, SP Harrison",
                           "A comprehensive benchmarking system for evaluating global vegetation models",
                           "Climate Futures Forum",
                           "Macquarie University, Ryde, Australia",
                           "Dec 2011",
                           ""),

                         c("DI Kelley, IC Prentice, H Wang, K Wills, SP Harrison",
                           "A comprehensive benchmarking system for evaluating global vegetation models",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2011",
                           ""),

                         c("DI Kelley",
                           "Benchmark data-sets for assessing DGVM performance",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Sep 2011",
                           ""),

                           "New Page",

                         c("DI Kelley, SP Harrison, IC Prentice",
                           "The effects of climate change on Australian fire regimes",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2010",
                           ""),

                         c("DI Kelley",
                           "Transient Biomization Scheme",
                           "course seminar for MSc Earth Systems Science",
                           "Department of Earth Sciences, University of Bristol",
                           "Jul 2008",
                           ""),

                         c("DI Kelley, E Counce",
                           "Forest Fire simulator",
                           "course seminar for MSc Earth Systems Science",
                           "Department of Earth Sciences, University of Bristol",
                           "Nov 2007",
                           "")))

AdditionalSection = list(Publications, Software, Conferences)
