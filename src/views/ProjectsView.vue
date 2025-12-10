<script setup lang="ts">
const projects = [
  {
    id: 1,
    title: 'Document Archiving System',
    description: 'A comprehensive system for archiving and managing documents efficiently.',
    tags: ['Vue', 'Management', 'System'],
    link: 'https://sas.onurbayramov.codes',
    image: '/sas.avif',
    github: 'https://github.com/onurbyrmv0/Sened_arxivlesdirme_sistemi'
  },
  {
    id: 2,
    title: 'Optic Simulator',
    description: 'A simulation tool for optical physics experiments and visualizations.',
    tags: ['Vue', 'Simulation', 'Physics'],
    link: 'https://optic.onurbayramov.codes',
    image: '/optic.png',
    github: 'https://github.com/onurbyrmv0/optic-simulator'
  },
  {
    id: 3,
    title: 'Basic PMO Platform',
    description: 'A project management office platform for tracking and organizing tasks.',
    tags: ['Vue', 'PMO', 'Tracking'],
    link: 'https://pmo.onurbayramov.codes',
    image: '/pmo.png',
    github: 'https://github.com/onurbyrmv0/Basic-PMO-Platform'
  }
]
</script>

<template>
  <div class="max-w-6xl mx-auto py-12 px-4">
    <h2 class="text-4xl font-bold mb-12 text-dark-primary">My Projects</h2>
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
      <div v-for="project in projects" :key="project.id" class="bg-dark-surface rounded-xl overflow-hidden border border-gray-800 hover:border-dark-secondary transition-all hover:-translate-y-1 duration-300 flex flex-col">
        <div class="h-48 bg-gray-800 overflow-hidden relative">
          <img :src="project.image" :alt="project.title" class="w-full h-full object-cover transition-transform duration-500 hover:scale-110" />
        </div>
        <div class="p-6 flex flex-col flex-grow">
          <h3 class="text-2xl font-bold mb-2 text-white">{{ project.title }}</h3>
          <p class="text-gray-400 mb-4 flex-grow">{{ project.description }}</p>
          <div class="flex flex-wrap gap-2 mb-6">
            <span v-for="tag in project.tags" :key="tag" class="px-3 py-1 bg-gray-800 text-dark-secondary text-xs rounded-full">
              {{ tag }}
            </span>
          </div>
          <div class="flex gap-4 mt-auto">
            <a :href="project.link" target="_blank" class="flex-1 text-center py-2 bg-dark-primary text-black rounded-lg font-medium hover:bg-white transition-colors">
              View Live
            </a>
            <a :href="project.github" target="_blank" class="flex-1 text-center py-2 border border-dark-primary text-dark-primary rounded-lg font-medium hover:bg-dark-primary hover:text-black transition-colors">
              GitHub
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>