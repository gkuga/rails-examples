document.addEventListener('DOMContentLoaded', async () => {
  const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  const resp = await fetch('/api/v1/line/configuration')
  const data = await resp.json()
  liff
    .init({
      liffId: data.liff_id,
      withLoginOnExternalBrowser: true
    })
  liff
    .ready.then(() => {
      const idToken = liff.getIDToken()
      const body = `idToken=${idToken}`;
      const request = new Request('/user', {
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
          'X-CSRF-Token': token
        },
        method: 'POST',
        body: body
      });
      fetch(request)
        .then(response => response.json())
        .then(data => {
          data_id = data
        })
        .then(() => {
          window.location = '/after_login'
        })
    })
})
