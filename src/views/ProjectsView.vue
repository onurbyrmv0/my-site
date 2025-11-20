<script setup lang="ts">
const projects = [
  {
    id: 1,
    title: 'E-Commerce Platform',
    description: 'A full-featured online store built with Vue 3 and Node.js.',
    tags: ['Vue 3', 'Node.js', 'Tailwind'],
    link: '#'
  },
  {
    id: 2,
    title: 'Task Management App',
    description: 'A productivity tool to manage daily tasks and projects efficiently.',
    tags: ['TypeScript', 'Firebase', 'PWA'],
    link: '#'
  },
  {
    id: 3,
    title: 'Portfolio Website',
    description: 'My personal portfolio website showcasing my work and skills.',
    tags: ['Vite', 'Vue', 'Motion'],
    link: '#'
  }
]
</script>

<template>
  <div class="max-w-6xl mx-auto py-12 px-4">
    <h2 class="text-4xl font-bold mb-12 text-dark-primary">My Projects</h2>
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
      <div v-for="project in projects" :key="project.id" class="bg-dark-surface rounded-xl overflow-hidden border border-gray-800 hover:border-dark-secondary transition-all hover:-translate-y-1 duration-300">
        <div class="h-48 bg-gray-800 flex items-center justify-center">
          <span class="text-gray-600 text-4xl">Project Image</span>
        </div>
        <div class="p-6">
          <h3 class="text-2xl font-bold mb-2 text-white">{{ project.title }}</h3>
          <p class="text-gray-400 mb-4">{{ project.description }}</p>
          <div class="flex flex-wrap gap-2 mb-6">
            <span v-for="tag in project.tags" :key="tag" class="px-3 py-1 bg-gray-800 text-dark-secondary text-xs rounded-full">
              {{ tag }}
            </span>
          </div>
          <a :href="project.link" class="inline-block text-dark-primary hover:text-white font-medium transition-colors">
            View Project &rarr;
          </a>
        </div>
      </div>
    </div>
  </div>
</template>