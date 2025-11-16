# Don't Remove Credit @ph0enix_web
# Subscribe YouTube Channel For Amazing Bot @iyanuanjorindamilola
# Ask Doubt on telegram @ph0enix_web

from aiohttp import web
from .route import routes

async def web_server():
    web_app = web.Application(client_max_size=30000000)
    web_app.add_routes(routes)
    return web_app

