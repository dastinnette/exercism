// @ts-check
//
// ☝🏽 The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion on the web
// and supported IDEs when implementing this exercise. You don't need to
// understand types, JSDoc, or TypeScript in order to complete this JavaScript
// exercise, and can completely ignore this comment block and directive.


export function canExecuteFastAttack(knightIsAwake) {
  if (knightIsAwake) {
    return false
  } else {
    return true  
  }
}

export function canSpy(knightIsAwake, archerIsAwake, prisonerIsAwake) {
  if (knightIsAwake || archerIsAwake || prisonerIsAwake) {
    return true
  } else {
    return false
  }
}

export function canSignalPrisoner(archerIsAwake, prisonerIsAwake) {
  if (prisonerIsAwake && !archerIsAwake) {
    return true
  } else {
    return false
  }
}

export function canFreePrisoner( 
  knightIsAwake,
  archerIsAwake,
  prisonerIsAwake,
  petDogIsPresent,
 ) {
  if (petDogIsPresent && !archerIsAwake) {
    return true
  } else if (!knightIsAwake && !archerIsAwake && prisonerIsAwake) {
    return true 
  } else {
    return false 
  }
}