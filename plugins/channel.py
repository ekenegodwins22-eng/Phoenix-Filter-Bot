# Don't Remove Credit @ph0enix_web
# Subscribe YouTube Channel For Amazing Bot @iyanuanjorindamilola
# Ask Doubt on telegram @ph0enix_web

from pyrogram import Client, filters
from info import CHANNELS
from database.ia_filterdb import save_file

media_filter = filters.document | filters.video

@Client.on_message(filters.chat(CHANNELS) & media_filter)
async def media(bot, message):
    media = getattr(message, message.media.value, None)
    media.caption = message.caption
    await save_file(media)

