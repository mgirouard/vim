addEventListener('fetch', event => {
  event.respondWith(handleRequest(event.request));
});

async function handleRequest(request) {
  if ((request.headers.get('user-agent') || '').includes('curl')) {
    return new Response(await VIM.get('.vimrc'), {
      headers: {
        'content-type': 'text/plain',
      },
    });
  } else {
    return Response.redirect('https://github.com/mgirouard/vim', 302);
  }
}
