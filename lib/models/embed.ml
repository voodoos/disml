type footer = {
    text: string;
    icon_url: string option;
    proxy_icon_url: string option;
}

type image = {
    url: string option;
    proxy_url: string option;
    height: int option;
    width: int option;
}

type video = {
    url: string option;
    height: int option;
    width: int option;
}

type provider = {
    name: string option;
    url: string option;
}

type field = {
    name: string;
    value: string;
    inline: bool option;
}

type t = {
    title: string option;
    kind: string option;
    description: string option;
    url: string option;
    timestamp: string option;
    colour: int option;
    footer: footer option;
    image: image option;
    thumbnail: image option;
    video: video option;
    provider: provider option;
    fields: (field list) option;
}