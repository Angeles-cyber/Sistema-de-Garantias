<!-- Font Awesome para íconos -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="vista/Css/StylesFooter.css">
"

<!-- Footer -->
<footer class="footer-custom" id="footer">
  <div class="footer-content">
    <!-- Subir -->
    <div class="footer-section left">
      <a href="#" class="footer-link back-to-top">
        <i class="fas fa-arrow-up"></i> Subir
      </a>
    </div>

    <!-- Derechos -->
    <div class="footer-section center">
      <p>RIOS TEVES GESTION DE PROYECTOS E.I.R.L &copy; 2025 </p>
    </div>

    <!-- Red Social -->
    <div class="footer-section right">
  <a href="#" class="footer-link" title="Facebook">
    <i class="fab fa-facebook-f"></i>
  </a>
  <a href="#" class="footer-link" title="YouTube">
    <i class="fab fa-youtube"></i>
  </a>
  <a href="#" class="footer-link" title="LinkedIn">
    <i class="fab fa-linkedin-in"></i>
  </a>
</div>

  </div>
</footer>
<script>
  document.querySelector('.back-to-top')?.addEventListener('click', function (e) {
    e.preventDefault();
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });
</script>