(** Dispatched when connecting to the gateway, most users will have no use for this. *)
val hello : (Yojson.Safe.json -> unit) ref

(** Dispatched when each shard receives READY from discord after identifying on the gateway. Other event dispatch is received after this. *)
val ready : (Yojson.Safe.json -> unit) ref

(** Dispatched when successfully reconnecting to the gateway. *)
val resumed : (Yojson.Safe.json -> unit) ref

(** Dispatched when Discord decides a session is invalid, much like {!Client.hello} this is not very useful for most people. *)
val invalid_session : (Yojson.Safe.json -> unit) ref

(** Dispatched when a channel is created which is visible to the bot. *)
val channel_create : (Channel_t.t -> unit) ref

(** Dispatched when a channel visible to the bot is changed. *)
val channel_update : (Channel_t.t -> unit) ref

(** Dispatched when a channel visible to the bot is deleted. *)
val channel_delete : (Channel_t.t -> unit) ref

(** Dispatched when messages are pinned or unpinned from a a channel. *)
val channel_pins_update : (Yojson.Safe.json -> unit) ref

(** Dispatched when the bot joins a guild, and during startup. *)
val guild_create : (Guild_t.t -> unit) ref

(** Dispatched when a guild the bot is in is edited. *)
val guild_update : (Guild_t.t -> unit) ref

(** Dispatched when the bot is removed from a guild. *)
val guild_delete : (Guild_t.t -> unit) ref

(** Dispatched when a member is banned. *)
val member_ban : (Ban_t.t -> unit) ref

(** Dispatched when a member is unbanned. *)
val member_unban : (Ban_t.t -> unit) ref

(** Dispatched when emojis are added or removed from a guild. *)
val guild_emojis_update : (Yojson.Safe.json -> unit) ref

(** Dispatched when a guild's integrations are updated. *)
val integrations_update : (Yojson.Safe.json -> unit) ref

(** Dispatched when a member joins a guild. *)
val member_join : (Member_t.t -> unit) ref

(** Dispatched when a member leaves a guild. Is Dispatched alongside {!Client.member_ban} when a user is banned. *)
val member_leave : (Member_t.member_wrapper -> unit) ref

(** Dispatched when a member object is updated. *)
val member_update : (Member_t.member_update -> unit) ref

(** Dispatched when requesting guild members through {!Client.request_guild_members} *)
val members_chunk : (Member_t.t list -> unit) ref

(** Dispatched when a role is created. *)
val role_create : (Role_t.t -> unit) ref

(** Dispatched when a role is edited. *)
val role_update : (Role_t.t -> unit) ref

(** Dispatched when a role is deleted. *)
val role_delete : (Role_t.t -> unit) ref

(** Dispatched when a message is sent. *)
val message_create : (Message_t.t -> unit) ref

(** Dispatched when a message is edited. This does not necessarily mean the content changed. *)
val message_update : (Message_t.message_update -> unit) ref

(** Dispatched when a message is deleted. *)
val message_delete : (Snowflake.t -> Snowflake.t -> unit) ref

(** Dispatched when messages are bulk deleted. *)
val message_bulk_delete : (Snowflake.t list -> unit) ref

(** Dispatched when a rection is added to a message. *)
val reaction_add : (Reaction_t.reaction_event -> unit) ref

(** Dispatched when a reaction is removed from a message. *)
val reaction_remove : (Reaction_t.reaction_event -> unit) ref

(** Dispatched when all reactions are cleared from a message. *)
val reaction_bulk_remove : (Reaction_t.t list -> unit) ref

(** Dispatched when a user updates their presence. *)
val presence_update : (Presence.t -> unit) ref

(** Dispatched when a typing indicator is displayed. *)
val typing_start : (Yojson.Safe.json -> unit) ref

(** Dispatched when the current user is updated. You most likely want {!Client.member_update} or {!Client.presence_update} instead. *)
val user_update : (Yojson.Safe.json -> unit) ref

(**/**)
val voice_state_update : (Yojson.Safe.json -> unit) ref
val voice_server_update : (Yojson.Safe.json -> unit) ref
val webhooks_update : (Yojson.Safe.json -> unit) ref