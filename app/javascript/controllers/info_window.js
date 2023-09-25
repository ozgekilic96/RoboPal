import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static values = {
    cards: Array
  }

  connect() {
    console.log("Infooo")
  }
  document.addEventListener('DOMContentLoaded', () => {
    const robotCards = document.querySelectorAll('.card-trip');
    robotCards.forEach((card) => {
      const robotName = card.dataset.robotName;

      card.addEventListener('mouseover', () => {
        console.log("aaa");
        const infoWindow = document.createElement('div');
        infoWindow.classList.add('info-window');
        infoWindow.innerHTML = `<h4>${robotName}</h4>`;
        card.appendChild(infoWindow);
      });

      card.addEventListener('mouseout', () => {
        const infoWindow = card.querySelector('.info-window');
        if (infoWindow) {
          infoWindow.remove();
        }
      });
    });
  });
}
