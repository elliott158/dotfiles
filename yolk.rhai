const themes = #{
	babysfirst: #{
		//lower = further back layer
		color1: "#000000",
		color2: "#ffffff",
	}
};

export const data = #{
	colors: {themes.babysfirst}
};

export let eggs = #{
	openbox: #{
		targets: "~/.config/openbox",
		templates: ["menu.xml"],
		enabled: true,
	},
	emacs: #{
		targets: "~",
		strategy: "merge",
		enabled: true,
	},
	eww: #{
		targets: "~/.config/eww",
		enabled: true,
	},
};
