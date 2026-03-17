# My Personal Blog

A modern, dark-themed personal blog built with Vue 3, TypeScript, Vite, and Tailwind CSS.

## Features

- **Vue 3** with Composition API and `<script setup>`
- **TypeScript** for type safety
- **Vite** for fast development and building
- **Tailwind CSS v4** for styling
- **Vue Router** for navigation
- **VueUse Motion** for animations
- **Dark Mode** design

## Project Setup

```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Type-Check, Compile and Minify for Production

```sh
npm run build
```

## Docker

You can run the project using Docker:

### Using Docker Compose

```sh
docker-compose up -d --build
```

### Using Dockerfile Directly

```sh
docker build -t my-personal-site .
docker run -d -p 8080:80 my-personal-site
```

