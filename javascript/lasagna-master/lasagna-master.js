/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(minutes) {
    if (minutes === undefined) {
      return 'You forgot to set the timer.'
    } else if (minutes === 0) {
      return 'Lasagna is done.'
    } else {
      return 'Not done, please wait.'
    }
  }
  
  export function preparationTime(layers, time=2) {
    return layers.length * time 
  }
  
  export function quantities(layers) {
    return {
        noodles: layers.filter(i => i === 'noodles').length * 50,
        sauce: layers.filter(i => i === 'sauce').length * 0.2,
      }
  }
  
  export function addSecretIngredient(friendsList, myList) {
    let secretIngredient = friendsList[friendsList.length - 1]
    myList.push(secretIngredient)
  }
  
  export function scaleRecipe(recipe, portions) {
    const scaled = {};
    for (const key in recipe) {
      scaled[key] = recipe[key] * portions / 2;
    }
    return scaled;
  }