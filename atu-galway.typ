#import "@preview/touying:0.5.5": *
#import themes.university: *
#import "@preview/numbly:0.1.0": numbly
#import "./colours.typ"
#let rotated-logo = rotate(90deg, image("logos/atu-logo.jpg", width: 3cm))

#show: university-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Test ATU Theme],
    subtitle: [Subtitle],
    author: [John French],
    // date: datetime.today(),
    institution: [ATU Galway],
    logo: image("logos/atu-logo-full-green.svg", width: 5cm),
    // logo2: rotated-logo,
    // logo2: image("atu-logo-full-green.svg", width: 4cm)
    logo2: image("./logos/atu-logo.jpg", width: 5cm)
  ),
  // header-right: self => utils.display-current-heading(level: 1) + h(.3em) + self.info.logo,  
  // header-right: self => utils.display-current-heading(level: 1) + self.info.logo2,   
  header-right: self => self.info.logo2,   
  // sidebar: false,
  footer-columns: (1fr, 3fr, 1fr),
  config-colors(
    // Teal, Orange, Sand
    primary: teal,
    secondary: orange,
    tertiary: sand,
    // Navy, Light Blue, Orange
    // primary:  navy,
    // secondary: light-blue,
    // tertiary: orange,

    // Warm Grey, Gold
    neutral-lightest: rgb("#c8bebf"),
    neutral-darkest: rgb("#d7b463"),   
//     // Gold, Warm Grey
//     neutral-lightest: gold,
//     neutral-darkest: warm-grey,    
  ),
)


#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

= Section 1

== First Slide
- Oh Hi
- #lorem(15)
  - #lorem(10)
    - *#lorem(5)*
- #lorem(10)
- #lorem(10)
- #lorem(10)
== Me Too
- hi there again



#focus-slide[
  Another variant with primary color in background...
]

#matrix-slide[
  left
][
  middle
][
  right
]

#matrix-slide(columns: 1)[
  top
][
  bottom
]