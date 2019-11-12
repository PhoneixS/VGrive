namespace App.Configs {

    public class AppSettings : Granite.Services.Settings {

        public int window_width { get; set; }
        public int window_height { get; set; }
        public int window_posx { get; set; }
        public int window_posy { get; set; }
        public int window_state { get; set; }
        public int auto_sync { get; set; }
        public string sync_folder { get; set; }
        public bool dark_mode { get; set; }
        public bool advanced_view { get; set; }
        public int start_minimized { get; set; }

        private static AppSettings _settings;

        public static unowned AppSettings get_default () throws Error {
            if (_settings == null) _settings = new AppSettings ();
            return _settings;
        }

        private AppSettings () throws Error {
            base ("com.github.bcedu.vgrive.settings");
        }
    }

}
