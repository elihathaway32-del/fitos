// FitOS Service Worker — v69
// Cache-first for app shell. Auto-updates on close + reopen.
const CACHE = 'fitos-v92';
const SHELL = ['./','./index.html','./FitOS_App.html'];

self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(CACHE)
      .then(c => c.addAll(SHELL))
      .then(() => self.skipWaiting())   // activate immediately, don't wait for tabs to close
  );
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys()
      .then(keys => Promise.all(
        keys.filter(k => k !== CACHE).map(k => caches.delete(k))
      ))
      .then(() => self.clients.claim())  // take control of all open tabs
  );
});

self.addEventListener('fetch', e => {
  // Skip non-GET and cross-origin requests (barcode API, food API etc)
  if(e.request.method !== 'GET') return;
  const url = new URL(e.request.url);
  if(url.origin !== location.origin) return;

  e.respondWith(
    caches.match(e.request).then(cached => {
      // Always fetch fresh in background and update cache
      const networkFetch = fetch(e.request).then(res => {
        if(res && res.status === 200 && res.type === 'basic'){
          const clone = res.clone();
          caches.open(CACHE).then(c => c.put(e.request, clone));
        }
        return res;
      }).catch(() => null);
      // Return cached immediately if available, otherwise wait for network
      return cached || networkFetch;
    })
  );
});
