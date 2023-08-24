// document.addEventListener('DOMContentLoaded', () => {
//   const robotCards = document.querySelectorAll('.robot-card');
//   robotCards.forEach((card) => {
//     const robotName = card.dataset.robotName;

//     card.addEventListener('mouseover', () => {
//       const infoWindow = document.createElement('div');
//       infoWindow.classList.add('info-window');
//       infoWindow.innerHTML = `<h4>${robotName}</h4>`;
//       card.appendChild(infoWindow);
//     });

//     card.addEventListener('mouseout', () => {
//       const infoWindow = card.querySelector('.info-window');
//       if (infoWindow) {
//         infoWindow.remove();
//       }
//     });
//   });
// });
