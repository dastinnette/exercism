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
  
  export function preparationTime(layers, time) {
    let thickness = layers.length
    if (time === undefined) {
      return thickness * 2
    } else {
      return thickness * time
    }
  }
  
  export function quantities(layers) {
    const counter = {}
    const amounts = {}
    
    layers.forEach(element => {
      if (counter[element]) {
        counter[element] += 1
      } else {
        counter[element] = 1
      }
    })
  
    if (counter.noodles) {
      counter.noodles
    } else {
      counter.noodles = 0
    }
  
    if (counter.sauce) {
      counter.sauce
    } else {
      counter.sauce = 0
    }
    
    let noodleAmount = (counter.noodles * 50)
    let sauceAmount = (counter.sauce * 0.2)
    
    amounts.noodles = noodleAmount
    amounts.sauce = sauceAmount
    return amounts
  }
  
  export function addSecretIngredient(friendsList, myList) {
    let secretIngredient = friendsList[friendsList.length - 1]
    myList.push(secretIngredient)
  }
  
  export function scaleRecipe(recipe, portions) {
    let scale = portions/2
    console.log(scale)
    const quantities = {}
    
    for (const key in recipe) {
      console.log(key)
      let newValue = (recipe[key]) * scale
      console.log(recipe[key])
      quantities[key] = newValue
    }
  
    return quantities 
  }