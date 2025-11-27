#import "@preview/cetz:0.4.2"

// Main function to draw the knowledge tree
#let draw-knowledge-tree(knowledge-tree) = {
  // Creates the main category cards
  let category-card(title, fill: white) = {
    box(
      width: 8.5cm,
      height: 1.4cm,
      fill: fill,
      stroke: none,
      radius: 12pt,
      outset: 0pt,
      inset: 12pt,
    )[
      #set align(center + horizon)
      #text(size: 24pt, weight: "bold", fill: white, font: ("Maple Mono Normal NL", "Noto Sans CJK SC"))[#title]
    ]
  }

  // Creates the subcategory cards (leaf nodes)
  let subcategory-card(title, description: none) = {
    let card-height = if description != none { 2.2cm } else { 2cm }
    box(
      width: 6.6cm,
      height: card-height,
      fill: white,
      stroke: 1pt + rgb("#e5e7eb"),
      radius: 10pt,
      inset: 10pt,
    )[
      #if description != none {
        align(center)[
          #text(size: 20pt, weight: "bold", fill: rgb("#1f2937"), font: (
            "Maple Mono Normal NL",
            "Noto Sans CJK SC",
          ))[#title]
          #v(0.3fr)
          #text(size: 9pt, fill: rgb("#6b7280"))[#description]
        ]
      } else {
        align(center + horizon)[
          #text(size: 20pt, weight: "bold", fill: rgb("#1f2937"), font: (
            "Maple Mono Normal NL",
            "Noto Sans CJK SC",
          ))[#title]
        ]
      }
    ]
  }

  cetz.canvas(length: 1cm, {
    import cetz.draw: *

    let card-width = 4
    let card-height = 1.4
    let sub-card-width = 6.6

    let h-spacing = 7
    let v-spacing = 3.8

    // Function to calculate the horizontal width of a subtree
    let get-subtree-width(node, depth: 0) = {
      let is-leaf = ("children" not in node or depth >= 3) and not node.at("is_non_leaf", default: false)
      if is-leaf {
        return h-spacing
      }
      let width = 0
      for child in node.children {
        width += get-subtree-width(child, depth: depth + 1)
      }
      return width
    }

    // Recursive function to draw categories
    let draw-category(node, x, y, depth: 0, parent-color: none) = {
      let current-color = if "color" in node { node.color } else { parent-color }

      let is-leaf = ("children" not in node or depth >= 3) and not node.at("is_non_leaf", default: false)
      let description = node.at("description", default: none)
      let current-card-height = if is-leaf { if description != none { 2.2 } else { 2 } } else { card-height }

      if is-leaf {
        content((x, y), subcategory-card(node.title, description: description))
      } else {
        content((x, y), category-card(node.title, fill: current-color))
      }

      if "children" in node and not is-leaf {
        let children = node.children
        let total-width = get-subtree-width(node, depth: depth)

        let child-x-start = x - total-width / 2
        let current-x = child-x-start

        for child in children {
          let child-subtree-width = get-subtree-width(child, depth: depth + 1)
          let child-x = current-x + child-subtree-width / 2
          let child-y = y - v-spacing

          draw-category(child, child-x, child-y, depth: depth + 1, parent-color: current-color)

          let child-is-leaf = (
            ("children" not in child or depth + 1 >= 3) and not child.at("is_non_leaf", default: false)
          )
          let child-description = child.at("description", default: none)
          let child-card-height = if child-is-leaf { if child-description != none { 2.2 } else { 2 } } else {
            card-height
          }

          line(
            (x, y - current-card-height / 2),
            (child-x, child-y + child-card-height / 2),
            stroke: (paint: current-color.lighten(30%), thickness: 1.5pt),
          )
          current-x += child-subtree-width
        }
      }
    }

    // Start drawing from the root node
    draw-category(knowledge-tree, 0, 0, parent-color: knowledge-tree.color)
  })
}
