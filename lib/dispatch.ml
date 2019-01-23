let hello = ref (fun (_:Yojson.Safe.json) -> ())
let ready = ref (fun (_:Yojson.Safe.json) -> ())
let resumed = ref (fun (_:Yojson.Safe.json) -> ())
let invalid_session = ref (fun (_:Yojson.Safe.json) -> ())
let channel_create = ref (fun (_:Channel_t.t) -> ())
let channel_update = ref (fun (_:Channel_t.t) -> ())
let channel_delete = ref (fun (_:Channel_t.t) -> ())
let channel_pins_update = ref (fun (_:Yojson.Safe.json) -> ())
let guild_create = ref (fun (_:Guild_t.t) -> ())
let guild_update = ref (fun (_:Guild_t.t) -> ())
let guild_delete = ref (fun (_:Guild_t.t) -> ())
let member_ban = ref (fun (_:Ban_t.t) -> ())
let member_unban = ref (fun (_:Ban_t.t) -> ())
let guild_emojis_update = ref (fun (_:Yojson.Safe.json) -> ())
let integrations_update = ref (fun (_:Yojson.Safe.json) -> ())
let member_join = ref (fun (_:Member_t.t) -> ())
let member_leave = ref (fun (_:Member_t.member_wrapper) -> ())
let member_update = ref (fun (_:Member_t.member_update) -> ())
let members_chunk = ref (fun (_:Member_t.t list) -> ())
let role_create = ref (fun (_:Role_t.t) -> ())
let role_update = ref (fun (_:Role_t.t) -> ())
let role_delete = ref (fun (_:Role_t.t) -> ())
let message_create = ref (fun (_:Message_t.t) -> ())
let message_update = ref (fun (_:Message_t.message_update) -> ())
let message_delete = ref (fun (_:Snowflake.t) (_:Snowflake.t) -> ())
let message_delete_bulk = ref (fun (_:Snowflake.t list) -> ())
let reaction_add = ref (fun (_:Reaction_t.reaction_event) -> ())
let reaction_remove = ref (fun (_:Reaction_t.reaction_event) -> ())
let reaction_bulk_remove = ref (fun (_:Reaction_t.t list) -> ())
let presence_update = ref (fun (_:Presence.t) -> ())
let typing_start = ref (fun (_:Yojson.Safe.json) -> ())
let user_update = ref (fun (_:Yojson.Safe.json) -> ())
let voice_state_update = ref (fun (_:Yojson.Safe.json) -> ())
let voice_server_update = ref (fun (_:Yojson.Safe.json) -> ())
let webhooks_update = ref (fun (_:Yojson.Safe.json) -> ())