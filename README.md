# RBB_PrimatesTreeTraversal
## 1. The name of the RBB
PrimateTreesTraversal

## 2. The author(s) names & affiliation(s)
Kirana Widyastuti, Uta Berger

## 3. Keywords
tree network, forest, movement, tree canopy

## 4. The purpose of the RBB
The PrimateTreesTraversal Reusable Building Block is developed to represent how primates travel between trees in the forest. The tree characteristics (i.e., dbh, height, canopy radius) determines the mode of travel performed by the primate.

## 5. Concepts

## 6. An overview of the RBB and its use

### Entity

- What entity, or entities, are running the submodel or are involved (e.g., by providing information)?
  - The agents are a primate individual and trees represented as network nodes   
- What state variables does the entity need to have to run this RBB?
  - a primate has a destination tree
  - trees have canopy radius and height
- Which other variables describe the entities?
  - primate body weight  

### Context, model parameters & patterns

+ What global variables (e.g., parameters characterising the environment) or data structures (e.g., a gridded spatial environment) does the use of the RBB require?
+ Does the RBB directly affect global variables or data structures?
+ What parameters does the RBB use? Preferably a table including parameter name, meaning, default value, range, and unit (if applicable). 

### Patterns and data to determine parameters and/or to claim that the RBB is realistic enough for its purpose

### Interface - A list of all inputs and outputs of the RBB
#### Inputs

| Input                 | Unit   |
|-----------------------|--------|
| x | y |
| y | x |

#### Outputs

| Output         | Unit     |
|----------------|----------|
| x | y |
| y | x |

#### Scales

One grid cell represents 1 sqm. One timestep corresponds to one second.

## 7. Pseudocode, a Flowchart or other type of graphical representation

## 8. The program code

## 9. Example analyses of a simulation output, test cases and benchmarks

## 10. Version control

## 11. Status info

## 12. Citation of the RBB

## 13. Example implementation of the RBB to demonstrate its use

## 14. Use history

## 15. A manual and/or tutorial, in particular for more complex RBBs

## 16. Relationship to other RBBs

## 17. References

