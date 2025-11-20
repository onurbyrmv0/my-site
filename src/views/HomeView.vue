<script setup lang="ts">
import { ref } from 'vue'
import { useMotion } from '@vueuse/motion'

const target = ref<HTMLElement>()

useMotion(target, {
  initial: { opacity: 0, y: 100 },
  enter: { opacity: 1, y: 0, transition: { type: 'spring', stiffness: 250, damping: 25, mass: 0.5 } },
})

const services = [
  { title: 'Frontend Development', desc: 'Building responsive, pixel-perfect user interfaces with Vue.js and Tailwind CSS.', icon: '💻' },
  { title: 'Backend Integration', desc: 'Connecting complex frontends with robust APIs and server-side logic.', icon: '⚙️' },
  { title: 'UI/UX Design', desc: 'Creating intuitive and accessible designs that users love.', icon: '🎨' },
]

const techStack = [
  'Vue.js', 'TypeScript', 'Tailwind CSS', 'Node.js', 'Vite', 'Git', 'Figma', 'Firebase'
]
</script>

<template>
  <div class="flex flex-col w-full">
    <!-- Hero Section -->
    <section class="flex flex-col items-center justify-center min-h-[90vh] text-center px-4 relative overflow-hidden">
      <div ref="target" class="space-y-6 z-10 max-w-4xl">
        <h2 class="text-dark-secondary font-mono text-lg tracking-wider mb-4">HELLO, I'M ONUR BAYRAMOV</h2>
        <h1 class="text-5xl md:text-8xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-white via-gray-200 to-gray-500 pb-2">
          Crafting Digital <br/> Experiences
        </h1>
        <p class="text-xl text-gray-400 max-w-2xl mx-auto leading-relaxed">
          I'm a software developer passionate about building accessible, pixel-perfect, and performant web applications.
        </p>
        <div class="flex flex-wrap gap-4 justify-center items-center mt-10">
          <router-link to="/projects" class="px-8 py-4 bg-dark-primary text-black font-bold rounded-lg hover:bg-opacity-90 transition-all transform hover:scale-105 shadow-lg shadow-dark-primary/20">
            View My Work
          </router-link>
          <router-link to="/contact" class="px-8 py-4 border border-gray-700 text-white font-bold rounded-lg hover:border-dark-secondary hover:text-dark-secondary transition-all transform hover:scale-105 bg-dark-surface/50 backdrop-blur-sm">
            Contact Me
          </router-link>
        </div>
      </div>
      
      <!-- Interactive background elements -->
      <div class="absolute inset-0 -z-0 overflow-hidden pointer-events-none">
          <div class="absolute top-1/4 left-1/4 w-96 h-96 bg-dark-primary rounded-full mix-blend-screen filter blur-[100px] opacity-10 animate-blob"></div>
          <div class="absolute top-1/3 right-1/4 w-96 h-96 bg-dark-secondary rounded-full mix-blend-screen filter blur-[100px] opacity-10 animate-blob animation-delay-2000"></div>
          <div class="absolute bottom-1/4 left-1/3 w-96 h-96 bg-blue-600 rounded-full mix-blend-screen filter blur-[100px] opacity-10 animate-blob animation-delay-4000"></div>
      </div>

      <!-- Scroll Indicator -->
      <div class="absolute bottom-10 left-1/2 transform -translate-x-1/2 animate-bounce text-gray-500">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3" />
        </svg>
      </div>
    </section>

    <!-- Tech Stack Section -->
    <section class="py-20 bg-dark-surface/30 border-y border-gray-800">
      <div class="max-w-7xl mx-auto px-4 text-center">
        <h3 class="text-2xl font-bold mb-12 text-gray-300">Technologies I Work With</h3>
        <div class="flex flex-wrap justify-center gap-8 md:gap-12">
          <div v-for="tech in techStack" :key="tech" class="text-xl font-semibold text-gray-500 hover:text-dark-primary transition-colors cursor-default">
            {{ tech }}
          </div>
        </div>
      </div>
    </section>

    <!-- What I Do Section -->
    <section class="py-24 px-4 max-w-7xl mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-3xl md:text-5xl font-bold mb-4">What I Do</h2>
        <p class="text-gray-400 max-w-2xl mx-auto">I help businesses and individuals bring their ideas to life with modern web technologies.</p>
      </div>
      
      <div class="grid md:grid-cols-3 gap-8">
        <div v-for="service in services" :key="service.title" class="p-8 bg-dark-surface rounded-2xl border border-gray-800 hover:border-dark-primary/50 transition-all hover:-translate-y-2 duration-300 group">
          <div class="text-4xl mb-6 bg-dark-bg w-16 h-16 flex items-center justify-center rounded-xl group-hover:scale-110 transition-transform">{{ service.icon }}</div>
          <h3 class="text-xl font-bold mb-3 text-white">{{ service.title }}</h3>
          <p class="text-gray-400 leading-relaxed">{{ service.desc }}</p>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-24 px-4">
      <div class="max-w-5xl mx-auto bg-gradient-to-r from-dark-surface to-dark-bg border border-gray-800 rounded-3xl p-12 text-center relative overflow-hidden">
        <div class="relative z-10">
          <h2 class="text-3xl md:text-5xl font-bold mb-6">Ready to start your project?</h2>
          <p class="text-xl text-gray-400 mb-8 max-w-2xl mx-auto">Let's collaborate and build something amazing together. I'm currently available for freelance work.</p>
          <router-link to="/contact" class="inline-block px-8 py-4 bg-white text-black font-bold rounded-lg hover:bg-gray-200 transition-colors">
            Let's Talk
          </router-link>
        </div>
        <div class="absolute top-0 right-0 w-64 h-64 bg-dark-primary/10 rounded-full blur-3xl -mr-16 -mt-16"></div>
        <div class="absolute bottom-0 left-0 w-64 h-64 bg-dark-secondary/10 rounded-full blur-3xl -ml-16 -mb-16"></div>
      </div>
    </section>
  </div>
</template>

<style scoped>
.animate-blob {
  animation: blob 7s infinite;
}
.animation-delay-2000 {
  animation-delay: 2s;
}
.animation-delay-4000 {
  animation-delay: 4s;
}
@keyframes blob {
  0% { transform: translate(0px, 0px) scale(1); }
  33% { transform: translate(30px, -50px) scale(1.1); }
  66% { transform: translate(-20px, 20px) scale(0.9); }
  100% { transform: translate(0px, 0px) scale(1); }
}
</style>