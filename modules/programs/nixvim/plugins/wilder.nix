{
  programs.nixvim.plugins.wilder = {
    enable = true;

    modes = [ ":" "/" "?" ];

    pipeline = [''
      wilder.branch(
        wilder.cmdline_pipeline(),
        wilder.search_pipeline()
      )
    ''];

    renderer = ''
      wilder.popupmenu_renderer(
        wilder.popupmenu_palette_theme({
          border = 'rounded',
          max_height = '75%',
          min_height = 0,
          prompt_position = 'top',
          reverse = 0,
        }),
        {
          highlighter = {
            wilder.lua_pcre2_highlighter(), -- requires `luarocks install pcre2`
            wilder.lua_fzy_highlighter(),   -- requires fzy-lua-native vim plugin found                        -- at https://github.com/romgrk/fzy-lua-native
          },
           highlights = {
              accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#f4468f'}}),
          },
          left = { ' ', wilder.popupmenu_devicons() },
          right = { ' ', wilder.popupmenu_scrollbar() },
        }
      )
    '';
  };
}
