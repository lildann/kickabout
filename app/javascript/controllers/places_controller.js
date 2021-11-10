// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "field", "map", "latitude", "longitude" ]

  connect() {
    console.log("connect")
    if (typeof(google) != "undefined") {
      this.initMap()
    }
  }

  initMap() {

    this.map = new google.maps.Map(this.mapTarget, {

      center: new google.maps.LatLng(51.5,-0.12),
      zoom: 7
    })
    this.autocomplete = new google.maps.places.Autocomplete(this.fieldTarget)
    this.autocomplete.bindTo('bounds', this.map)
    this.autocomplete.setFields(['address_components', 'geometry', 'icon', 'name'])
    this.autocomplete.addListener('place_changed', this.placeChanged.bind(this))
    this.marker = new google.maps.Marker({
      map: this.map,
      anchorPoint: new google.maps.Point(0, -29)
    })
  }

  placeChanged() {
    let place = this.autocomplete.getPlace()
    if (!place.geometry) {
      window.alert(`No location information available for '${place.name}'`)
      return
    }
    if (!place.geometry.viewport) {
      this.map.fitBounds(place.geometry.viewport)
    } else {
      this.map.setCenter(place.geometry.location)
      this.map.setZoom(17)
    }
    this.marker.setPosition(place.geometry.location)
    this.marker.setVisible(true)
    this.latitudeTarget.value = place.geometry.location.lat()
    this.longitudeTarget.value = place.geometry.location.lng()    
  }

  keydown(event) {
    if (event.key == "Enter")
      event.preventDefault()
  }

}