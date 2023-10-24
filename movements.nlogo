to orangutan-move
 ask orangutans
 [
    ;pen-down
    ;check if an arboreal route to target exists, if not:
    ifelse path-route = [] or path-route = false ;if orangutan reached target or there is no arboreal link
    [
      ;if this is a fruiting tree
      if [color] of one-of trees-here = red ;and one-of trees-here != last-visited-fruiting-tree
      [
        clear-transit-flags ;clear the transit tree markers from previous trip (transit tree: tree from which I had no more arboreal route to my target)
        leave-visiting-stamp ;add myself to the tree's visitor list
        gain-energy

        ;proceed to this block only if energy acquiring process completed
        if energy-acquired? = TRUE
        [
          select-target
          find-route
          set last-visited-fruiting-tree target-tree
          set visited-fruiting-tree lput target-tree visited-fruiting-tree
        ]
      ]
      ;if this is a transit tree, switch to terrestrial move
      if [color] of one-of trees-here = yellow
      [
        ;print "no arboreal route to target! proceed with terrestrial move.."
        set upcoming-link nobody
        move-terrestrial
      ]
      ;if this is a non fruiting tree, find a target tree
      if [color] of one-of trees-here = green + 20
      [
        clear-transit-flags
        select-target
        find-route
      ]
    ]
    ;if i have arboreal route to traverse
    [
      ;remove the first & current tree from list --> make sure it doesn't waste a timestep staying on the same tree
      if [who] of item 0 path-route = [who] of one-of trees-here ;check if the route map contains my current tree..
      [set path-route remove-item 0 path-route] ;if so, remove this tree from my route map

      ;if there is no connected tree from here, rechecking this after removing a tree from the list (see above)
      ifelse path-route = [] or path-route = false or path-route = [false] ;accomodating from previous counting
      [
        let dstn target-tree
        move-terrestrial ;walk to the target tree
      ]
      [
        move-arboreal
      ]
    ]
    set count-move-all count-walk + count-sway + count-descent + count-climb + count-brachiation
  ]
end
