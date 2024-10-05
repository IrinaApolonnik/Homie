// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
  function toggleMenu(event) {
    const menu = document.querySelector('.dropdown-menu');
    menu.style.display = menu.style.display === 'block' ? 'none' : 'block'; // Переключение видимости
    event.stopPropagation(); // Предотвратить всплытие события
  }

  // Закрыть меню при клике вне его
  document.addEventListener('click', function() {
    const menu = document.querySelector('.dropdown-menu');
    if (menu.style.display === 'block') {
      menu.style.display = 'none';
    }
  });
