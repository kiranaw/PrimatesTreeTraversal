to orangutan-move
 ask orangutans
 [
    ifelse path-route = [] ;if orangutan reached target or there is no arboreal link
    [
      ;if this is a fruiting tree
      if [color] of one-of trees-here = red ;and one-of trees-here != last-visited-fruiting-tree
      [
          select-target
          find-route
          set last-visited-fruiting-tree target-tree
          set visited-fruiting-tree lput target-tree visited-fruiting-tree
      ]
    ]
    [
      ;remove the first & current tree from list 
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
  ]
end
