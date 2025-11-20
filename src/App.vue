<script setup lang="ts">
import { RouterView, RouterLink } from 'vue-router'
</script>

<template>
  <header class="p-6 flex justify-between items-center max-w-7xl mx-auto w-full z-50 relative">
    <RouterLink to="/" class="text-2xl font-bold text-white hover:text-dark-primary transition-colors tracking-tight">
      Onur<span class="font-light text-gray-400">Bayramov</span>
    </RouterLink>
    <nav class="hidden md:flex gap-8 items-center">
      <RouterLink to="/" class="text-gray-300 hover:text-white transition-colors" active-class="text-dark-primary">Home</RouterLink>
      <RouterLink to="/about" class="text-gray-300 hover:text-white transition-colors" active-class="text-dark-primary">About</RouterLink>
      <RouterLink to="/projects" class="text-gray-300 hover:text-white transition-colors" active-class="text-dark-primary">Projects</RouterLink>
      <RouterLink to="/contact" class="px-4 py-2 bg-dark-surface border border-dark-primary text-dark-primary rounded-full hover:bg-dark-primary hover:text-black transition-all" active-class="bg-dark-primary text-black">Contact</RouterLink>
    </nav>
    <!-- Mobile Menu Button (Placeholder) -->
    <button class="md:hidden text-white">
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
      </svg>
    </button>
  </header>

  <main class="flex-grow relative z-0">
    <RouterView v-slot="{ Component }">
      <transition name="fade" mode="out-in">
        <component :is="Component" />
      </transition>
    </RouterView>
  </main>

  <footer class="p-8 text-center text-gray-600 text-sm border-t border-gray-800 mt-12">
    <div class="flex justify-center gap-6 mb-4">
      <a href="https://github.com/onurbyrmv0" target="_blank" class="hover:text-dark-primary transition-colors">GitHub</a>
      <a href="#" target="_blank" class="hover:text-dark-primary transition-colors">LinkedIn</a>
      <a href="https://instagram.com/onur.byrmv" target="_blank" class="hover:text-dark-primary transition-colors">Instagram</a>
    </div>
    &copy; 2025 Onur Bayramov. Built with Vue 3 & Tailwind.
  </footer>
</template>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
