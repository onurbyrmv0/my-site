<script setup lang="ts">
import { ref } from 'vue'

const form = ref({
  name: '',
  email: '',
  message: ''
})

const isSubmitting = ref(false)

const submitForm = async () => {
  isSubmitting.value = true
  
  // Kendi e-posta adresiniz
  const EMAIL_ADDRESS = "onur.bayramov2005@icloud.com" 

  try {
    const response = await fetch(`https://formsubmit.co/ajax/${EMAIL_ADDRESS}`, {
      method: "POST",
      headers: { 
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify({
        name: form.value.name,
        email: form.value.email,
        message: form.value.message,
        _subject: `Portfolio: ${form.value.name} size bir mesaj gönderdi!`,
        _template: 'table',
        _captcha: 'false',
        _honey: '' // Spam koruması için gizli alan
      })
    });

    const result = await response.json();

    if (response.ok && (result.success === "true" || result.success === true)) {
      alert('Mesajınız başarıyla gönderildi! Teşekkürler.')
      form.value = { name: '', email: '', message: '' }
    } else {
      // FormSubmit hata mesajını göster (örneğin: "Please verify your email")
      const errorMsg = result.message || 'Bir hata oluştu. Lütfen daha sonra tekrar deneyin.';
      alert(`Hata: ${errorMsg}`);
      
      if (errorMsg.toLowerCase().includes('verify')) {
        alert('Lütfen e-postanızı (Spam kutusu dahil) kontrol edin ve FormSubmit aktivasyonunu onaylayın.');
      }
    }
  } catch (error) {
    alert('Gönderim hatası. İnternet bağlantınızı veya tarayıcı eklentilerinizi (AdBlock vb.) kontrol edin.');
    console.error('Submission Error:', error);
  } finally {
    isSubmitting.value = false
  }
}
</script>

<template>
  <div class="max-w-2xl mx-auto py-12 px-4">
    <h2 class="text-4xl font-bold mb-8 text-dark-primary text-center">Get In Touch</h2>
    <p class="text-gray-400 text-center mb-12">
      Have a project in mind or just want to say hi? Feel free to send me a message.
    </p>
    
    <form @submit.prevent="submitForm" class="space-y-6 bg-dark-surface p-8 rounded-xl border border-gray-800">
      <div>
        <label for="name" class="block text-sm font-medium text-gray-300 mb-2">Name</label>
        <input 
          type="text" 
          id="name" 
          name="name"
          v-model="form.name"
          required
          class="w-full px-4 py-3 bg-dark-bg border border-gray-700 rounded-lg focus:ring-2 focus:ring-dark-primary focus:border-transparent outline-none text-white transition-all"
          placeholder="Your Name"
        >
      </div>
      
      <div>
        <label for="email" class="block text-sm font-medium text-gray-300 mb-2">Email</label>
        <input 
          type="email" 
          id="email" 
          name="email"
          v-model="form.email"
          required
          class="w-full px-4 py-3 bg-dark-bg border border-gray-700 rounded-lg focus:ring-2 focus:ring-dark-primary focus:border-transparent outline-none text-white transition-all"
          placeholder="your@email.com"
        >
      </div>
      
      <div>
        <label for="message" class="block text-sm font-medium text-gray-300 mb-2">Message</label>
        <textarea 
          id="message" 
          name="message"
          v-model="form.message"
          required
          rows="5"
          class="w-full px-4 py-3 bg-dark-bg border border-gray-700 rounded-lg focus:ring-2 focus:ring-dark-primary focus:border-transparent outline-none text-white transition-all"
          placeholder="Your message..."
        ></textarea>
      </div>
      
      <button 
        type="submit" 
        :disabled="isSubmitting"
        class="w-full py-3 px-6 bg-dark-primary text-black font-bold rounded-lg hover:bg-opacity-90 transition-transform transform hover:scale-[1.02] disabled:opacity-50 disabled:cursor-not-allowed"
      >
        {{ isSubmitting ? 'Sending...' : 'Send Message' }}
      </button>
    </form>
    
    <div class="mt-12 flex justify-center gap-8">
      <a href="https://www.linkedin.com/in/onur-bayramov-a481081a8" target="_blank" class="text-gray-400 hover:text-dark-secondary transition-colors">
        LinkedIn
      </a>
      <a href="https://github.com/onurbyrmv0" target="_blank" class="text-gray-400 hover:text-dark-secondary transition-colors">
        GitHub
      </a>
      <a href="https://instagram.com/onur.byrmv" target="_blank" class="text-gray-400 hover:text-dark-secondary transition-colors">
        Instagram
      </a>
    </div>
  </div>
</template>