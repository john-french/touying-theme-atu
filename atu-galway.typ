#import "@preview/touying:0.5.5": *
#import themes.university: *
#import themes.metropolis: *
#import "@preview/numbly:0.1.0": numbly
// #import "colours.typ"

#let teal = rgb("005b5e")
#let navy = rgb("001a79")
#let purple = rgb("4d0857")
#let white = rgb("ffffff")
// Accent
#let orange = rgb("#ff791e")
#let light-blue = rgb("#7bb9cb")
#let light-green = rgb("ace6bd")
#let sand = rgb("fac8b4")
#let yellow = rgb("#edf041")
// Neutral / Metallic
#let gold = rgb("d7b463")
#let warm-grey = rgb("c8bebf")

#import "colours.typ"
#let rotated-logo = rotate(90deg, image("logos/atu-logo.jpg", width: 3cm))

// #show: uobristol-theme.with(
// #show: stargazer-theme.with(
// #show: dewdrop-theme.with(  
#show: metropolis-theme.with(
// #show: university-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Test ATU Theme],
    subtitle: [Subtitle],
    author: [John French],
    // date: datetime.today(),
    institution: [ATU Galway],
    logo: image("logos/atu-logo-full-green.svg", width: 8cm),
    // logo2: image("logos/atu-initial-white.svg", height: 4cm), 
    logo2: image("logos/atu-full-white.svg", height: 4cm), 
    // logo2: rotated-logo,
    // logo2: image("atu-logo-full-green.svg", width: 4cm)
    // logo2: image("./logos/atu-logo.jpg", width: 5cm),
    // Needed for UoBristol Theme
    // date: datetime.today()
  ),
  header-right: self => self.info.logo2,
  // header: self => self.info.title + self.info.logo2,
  // Needed for UoBristol theme
  // config-common(
  //   datetime-format: "[day] [month repr:short] [year]"
  // ),  
  // header-right: self => utils.display-current-heading(level: 1) + h(.3em) + self.info.logo,  
  // header-right: self => utils.display-current-heading(level: 1) + self.info.logo2,   
  // header-right: self => self.info.logo2,   
  // sidebar: false,
  footer-columns: (1fr, 3fr, 1fr),
  config-colors(
    // Teal, Orange, Sand
    // primary: orange,
    // secondary: teal,
    // tertiary: sand,
    // Navy, Light Blue, Orange
    primary:  orange,
    secondary: teal,
    tertiary: light-blue,

    // Gold, Warm Grey
    neutral-lightest: white,
    neutral-darkest: navy,    
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