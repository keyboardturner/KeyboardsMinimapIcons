local _, L = ...; -- Let's use the private table passed to every .lua 

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(L, {__index=defaultFunc});

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- The EU English game client also
	-- uses the US English locale code.
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "You appear to be running an incompatible addon: %s. This addon is no longer available for updates. Would you like to reload your UI and disable it?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap Blips"
	L["CurrentVersion"] = "Current addon version"
	L["NotRecognized"] = "isn't recognized. " -- includes space
	L["UpdateTo"] = "Please update to "
	L["ConvertingData"] = "Converting Data to New Format"
	L["MinimapTexture"] = "Minimap Icon Texture"
	L["MinimapTextureTT"] = "Select a texture to replace the minimap icons. These may include icons for gathering reagent nodes and NPC units."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodes as Circles"
	L["circle"] = "circle"
	L["NodesAsCirclesSG"] = "Nodes as Circles Shiny"
	L["BlueNodes"] = "Blue Nodes"
	L["blue"] = "blue"
	L["BlueNodesSG"] = "Blue Nodes Shiny"
	L["shiny"] = "shiny"
	L["Enabled"] = "Enabled"
	L["defaultDescript"] = "This option only includes smaller friendly player/NPC tracking nodes."
	L["circleDescript"] = "This option only includes smaller friendly player/NPC tracking nodes, and blue circles for gathering nodes."
	L["circleShinyDescript"] = "This option includes smaller friendly player/NPC tracking nodes, blue circles for gathering nodes, and golden shiny icons for special gathering nodes."
	L["blueDescript"] = "This option only includes smaller friendly player/NPC tracking nodes, and blue color for gathering nodes."
	L["blueShinyDescript"] = "This option includes smaller friendly player/NPC tracking nodes, blue color for gathering nodes, and golden shiny icons for special gathering nodes."
	L["ThanksForUsing"] = "Thank you for using %s. This addon replaces the default minimap icons, particularly for Hunter Tracking as well as coloring gathering nodes blue."
	L["InvalidCommand"] = "Invalid sub-command. " -- includes space
	L["CommandsAvailable"] = "Commands available:"
	L["AdditionalCommands"] = "Additional sub-commands:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Enabling " -- includes space
	L["TempDisable"] = "Temporarily disabling " -- includes space
	L["help"] = "help"

return end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "Parece que estás ejecutando un addon incompatible: %s. Este addon ya no está disponible para actualizaciones. ¿Quieres recargar la UI y desactivarlo?"
	L["DerangementMinimapBlips"] = "Blips del Minimapa de Derangement"
	L["CurrentVersion"] = "Versión actual del addon"
	L["NotRecognized"] = "no se reconoce. "
	L["UpdateTo"] = "Por favor actualiza a "
	L["ConvertingData"] = "Convirtiendo datos al nuevo formato"
	L["MinimapTexture"] = "Textura del Icono del Minimapa"
	L["MinimapTextureTT"] = "Selecciona una textura para reemplazar los iconos del minimapa. Esto puede incluir iconos para nodos de recolección y unidades NPC."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodos como Círculos"
	L["circle"] = "círculo"
	L["NodesAsCirclesSG"] = "Nodos como Círculos Brillantes"
	L["BlueNodes"] = "Nodos Azules"
	L["blue"] = "azul"
	L["BlueNodesSG"] = "Nodos Azules Brillantes"
	L["shiny"] = "brillante"
	L["Enabling"] = "Habilitando la opción %s."
	L["defaultDescript"] = "Esta opción solo incluye nodos de seguimiento de jugadores/PNJ amistosos más pequeños."
	L["circleDescript"] = "Esta opción solo incluye nodos de seguimiento de jugadores/PNJ amistosos más pequeños, y círculos azules para los nodos de recolección."
	L["circleShinyDescript"] = "Esta opción incluye nodos de seguimiento de jugadores/PNJ amistosos más pequeños, círculos azules para los nodos de recolección y iconos dorados brillantes para nodos especiales de recolección."
	L["blueDescript"] = "Esta opción solo incluye nodos de seguimiento de jugadores/PNJ amistosos más pequeños y color azul para los nodos de recolección."
	L["blueShinyDescript"] = "Esta opción incluye nodos de seguimiento de jugadores/PNJ amistosos más pequeños, color azul para los nodos de recolección e iconos dorados brillantes para nodos especiales de recolección."
	L["ThanksForUsing"] = "Gracias por usar %s. Este addon reemplaza los iconos del minimapa predeterminados, especialmente para el Rastreo de Cazador, así como para colorear los nodos de recolección en azul."
	L["InvalidCommand"] = "Comando no válido. "
	L["CommandsAvailable"] = "Comandos disponibles:"
	L["AdditionalCommands"] = "Subcomandos adicionales:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Habilitando "
	L["TempDisable"] = "Deshabilitando temporalmente "
	L["help"] = "ayuda"

return end

if LOCALE == "deDE" then
	-- German translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "Du scheinst ein inkompatibles Addon zu verwenden: %s. Dieses Addon ist nicht mehr für Updates verfügbar. Möchtest du dein UI neu laden und es deaktivieren?"
	L["DerangementMinimapBlips"] = "Derangement's Minimap-Symbole"
	L["CurrentVersion"] = "Aktuelle Addon-Version"
	L["NotRecognized"] = "wird nicht erkannt. "
	L["UpdateTo"] = "Bitte aktualisiere auf "
	L["ConvertingData"] = "Daten werden ins neue Format konvertiert"
	L["MinimapTexture"] = "Minimap-Symboltextur"
	L["MinimapTextureTT"] = "Wähle eine Textur, um die Minimap-Symbole zu ersetzen. Dies kann Symbole für Sammelstellen und NPC-Einheiten umfassen."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Knoten als Kreise"
	L["circle"] = "Kreis"
	L["NodesAsCirclesSG"] = "Knoten als Glänzende Kreise"
	L["BlueNodes"] = "Blaue Knoten"
	L["blue"] = "blau"
	L["BlueNodesSG"] = "Blaue Glänzende Knoten"
	L["shiny"] = "glänzend"
	L["Enabling"] = "Aktiviere die Option %s."
	L["defaultDescript"] = "Diese Option beinhaltet nur kleinere Tracking-Knoten für freundliche Spieler/NSCs."
	L["circleDescript"] = "Diese Option beinhaltet nur kleinere Tracking-Knoten für freundliche Spieler/NSCs und blaue Kreise für Sammelstellen."
	L["circleShinyDescript"] = "Diese Option beinhaltet kleinere Tracking-Knoten für freundliche Spieler/NSCs, blaue Kreise für Sammelstellen und glänzende goldene Symbole für spezielle Sammelstellen."
	L["blueDescript"] = "Diese Option beinhaltet kleinere Tracking-Knoten für freundliche Spieler/NSCs und blaue Farbe für Sammelstellen."
	L["blueShinyDescript"] = "Diese Option beinhaltet kleinere Tracking-Knoten für freundliche Spieler/NSCs, blaue Farbe für Sammelstellen und glänzende goldene Symbole für spezielle Sammelstellen."
	L["ThanksForUsing"] = "Danke, dass du %s benutzt. Dieses Addon ersetzt die standardmäßigen Minimap-Symbole, insbesondere für das Jäger-Tracking, und färbt Sammelstellen blau."
	L["InvalidCommand"] = "Ungültiger Unterbefehl. "
	L["CommandsAvailable"] = "Verfügbare Befehle:"
	L["AdditionalCommands"] = "Zusätzliche Unterbefehle:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Aktiviere "
	L["TempDisable"] = "Vorübergehendes Deaktivieren von "
	L["help"] = "hilfe"

return end

if LOCALE == "frFR" then
	-- French translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "Il semble que vous utilisez un addon incompatible : %s. Cet addon n'est plus disponible pour les mises à jour. Souhaitez-vous recharger votre interface utilisateur et le désactiver ?"
	L["DerangementMinimapBlips"] = "Icônes de Minicarte de Derangement"
	L["CurrentVersion"] = "Version actuelle de l'addon"
	L["NotRecognized"] = "n'est pas reconnu. "
	L["UpdateTo"] = "Veuillez mettre à jour vers "
	L["ConvertingData"] = "Conversion des données au nouveau format"
	L["MinimapTexture"] = "Texture de l'icône de la minicarte"
	L["MinimapTextureTT"] = "Sélectionnez une texture pour remplacer les icônes de la minicarte. Cela peut inclure des icônes pour les nœuds de collecte et les unités PNJ."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nœuds en Cercles"
	L["circle"] = "cercle"
	L["NodesAsCirclesSG"] = "Nœuds en Cercles Brillants"
	L["BlueNodes"] = "Nœuds Bleus"
	L["blue"] = "bleu"
	L["BlueNodesSG"] = "Nœuds Bleus Brillants"
	L["shiny"] = "brillant"
	L["Enabling"] = "Activation de l'option %s."
	L["defaultDescript"] = "Cette option inclut uniquement de plus petits nœuds de suivi pour les joueurs/PNJ amicaux."
	L["circleDescript"] = "Cette option inclut uniquement de plus petits nœuds de suivi pour les joueurs/PNJ amicaux, et des cercles bleus pour les nœuds de collecte."
	L["circleShinyDescript"] = "Cette option inclut de plus petits nœuds de suivi pour les joueurs/PNJ amicaux, des cercles bleus pour les nœuds de collecte, et des icônes dorées brillantes pour les nœuds de collecte spéciaux."
	L["blueDescript"] = "Cette option inclut uniquement de plus petits nœuds de suivi pour les joueurs/PNJ amicaux, et des nœuds de collecte bleus."
	L["blueShinyDescript"] = "Cette option inclut de plus petits nœuds de suivi pour les joueurs/PNJ amicaux, des nœuds de collecte bleus, et des icônes dorées brillantes pour les nœuds de collecte spéciaux."
	L["ThanksForUsing"] = "Merci d'utiliser %s. Cet addon remplace les icônes par défaut de la minicarte, notamment pour le suivi des chasseurs, ainsi que pour colorer les nœuds de collecte en bleu."
	L["InvalidCommand"] = "Commande invalide. "
	L["CommandsAvailable"] = "Commandes disponibles :"
	L["AdditionalCommands"] = "Sous-commandes supplémentaires :"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Activation de "
	L["TempDisable"] = "Désactivation temporaire de "
	L["help"] = "aide"

return end

if LOCALE == "itIT" then
	-- French translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "Sembra che tu stia eseguendo un addon incompatibile: %s. Questo addon non è più disponibile per aggiornamenti. Vuoi ricaricare la tua UI e disabilitarlo?"
	L["DerangementMinimapBlips"] = "Blips della Minimap di Derangement"
	L["CurrentVersion"] = "Versione corrente dell'addon"
	L["NotRecognized"] = "non è riconosciuto. "
	L["UpdateTo"] = "Aggiorna a "
	L["ConvertingData"] = "Conversione dei dati al nuovo formato"
	L["MinimapTexture"] = "Texture dell'Icona della Minimap"
	L["MinimapTextureTT"] = "Seleziona una texture per sostituire le icone della minimap. Queste possono includere icone per i nodi di raccolta e unità NPC."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodi come Cerchi"
	L["circle"] = "cerchio"
	L["NodesAsCirclesSG"] = "Nodi come Cerchi Brillanti"
	L["BlueNodes"] = "Nodi Blu"
	L["blue"] = "blu"
	L["BlueNodesSG"] = "Nodi Blu Brillanti"
	L["shiny"] = "brillante"
	L["Enabling"] = "Abilitando l'opzione %s."
	L["defaultDescript"] = "Questa opzione include solo nodi di tracciamento più piccoli per giocatori/PNJ amichevoli."
	L["circleDescript"] = "Questa opzione include solo nodi di tracciamento più piccoli per giocatori/PNJ amichevoli e cerchi blu per i nodi di raccolta."
	L["circleShinyDescript"] = "Questa opzione include nodi di tracciamento più piccoli per giocatori/PNJ amichevoli, cerchi blu per i nodi di raccolta e icone dorate brillanti per i nodi di raccolta speciali."
	L["blueDescript"] = "Questa opzione include solo nodi di tracciamento più piccoli per giocatori/PNJ amichevoli e nodi di raccolta blu."
	L["blueShinyDescript"] = "Questa opzione include nodi di tracciamento più piccoli per giocatori/PNJ amichevoli, nodi di raccolta blu e icone dorate brillanti per i nodi di raccolta speciali."
	L["ThanksForUsing"] = "Grazie per aver utilizzato %s. Questo addon sostituisce le icone predefinite della minimap, in particolare per il Tracciamento del Cacciatore e per colorare i nodi di raccolta in blu."
	L["InvalidCommand"] = "Comando non valido. "
	L["CommandsAvailable"] = "Comandi disponibili:"
	L["AdditionalCommands"] = "Sottocomandi aggiuntivi:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Abilitando "
	L["TempDisable"] = "Disabilitando temporaneamente "
	L["help"] = "aiuto"

return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here
	L["KMI"] = "KMI"
	L["kmi"] = "kmi"
	L["slashkmi"] = "/kmi"
	L["KMIVerbose"] = "Keyboard's Minimap Icons"
	L["IncompatibleFound"] = "Parece que você está rodando um addon incompatível: %s. Este addon não está mais sendo atualizado. Deseja recarregar sua IU e desativá-lo?"
	L["DerangementMinimapBlips"] = "Ícones do Minimapa de Derangement"
	L["CurrentVersion"] = "Versão atual do addon"
	L["NotRecognized"] = "não é reconhecida. "
	L["UpdateTo"] = "Por favor, atualize para "
	L["ConvertingData"] = "Convertendo dados para o novo formato"
	L["MinimapTexture"] = "Textura do Ícone do Minimapa"
	L["MinimapTextureTT"] = "Selecione uma textura para substituir os ícones do minimapa. Isso pode incluir ícones para nodos de reagentes de coleta e unidades NPC."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Nodos como Círculos"
	L["circle"] = "círculo"
	L["NodesAsCirclesSG"] = "Nodos como Círculos Brilhantes"
	L["BlueNodes"] = "Nodos Azuis"
	L["blue"] = "azul"
	L["BlueNodesSG"] = "Nodos Azuis Brilhantes"
	L["shiny"] = "brilhante"
	L["Enabling"] = "Habilitando a opção %s."
	L["defaultDescript"] = "Esta opção inclui apenas nodos de rastreamento menores para jogadores/PNJ amigáveis."
	L["circleDescript"] = "Esta opção inclui apenas nodos de rastreamento menores para jogadores/PNJ amigáveis e círculos azuis para nodos de coleta."
	L["circleShinyDescript"] = "Esta opção inclui nodos de rastreamento menores para jogadores/PNJ amigáveis, círculos azuis para nodos de coleta e ícones dourados brilhantes para nodos de coleta especiais."
	L["blueDescript"] = "Esta opção inclui apenas nodos de rastreamento menores para jogadores/PNJ amigáveis e nodos de coleta azuis."
	L["blueShinyDescript"] = "Esta opção inclui nodos de rastreamento menores para jogadores/PNJ amigáveis, nodos de coleta azuis e ícones dourados brilhantes para nodos de coleta especiais."
	L["ThanksForUsing"] = "Obrigado por usar %s. Este addon substitui os ícones padrão do minimapa, especialmente para o Rastreamento de Caçador, bem como colore nodos de coleta em azul."
	L["InvalidCommand"] = "Comando inválido. "
	L["CommandsAvailable"] = "Comandos disponíveis:"
	L["AdditionalCommands"] = "Subcomandos adicionais:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Habilitando "
	L["TempDisable"] = "Desativando temporariamente "
	L["help"] = "ajuda"
	-- official translation by kalazshar (https://github.com/kalazshar/kalazshar/blob/main/PT-BR%20for%20KeyboardTurner)

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here
	L["KMI"] = "КМИ"
	L["kmi"] = "кми"
	L["slashkmi"] = "/кми"
	L["KMIVerbose"] = "Иконки Миникарты Keyboard"
	L["IncompatibleFound"] = "Похоже, что вы используете несовместимый аддон: %s. Этот аддон больше не поддерживается. Хотите перезагрузить интерфейс и отключить его?"
	L["DerangementMinimapBlips"] = "Иконки Миникарты Derangement"
	L["CurrentVersion"] = "Текущая версия аддона"
	L["NotRecognized"] = "не распознан. "
	L["UpdateTo"] = "Пожалуйста, обновите до "
	L["ConvertingData"] = "Конвертация данных в новый формат"
	L["MinimapTexture"] = "Текстура иконок на миникарте"
	L["MinimapTextureTT"] = "Выберите текстуру для замены иконок на миникарте. Это могут быть иконки для узлов сбора и NPC."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "Узлы как Круги"
	L["circle"] = "круг"
	L["NodesAsCirclesSG"] = "Узлы как Блестящие Круги"
	L["BlueNodes"] = "Синие Узлы"
	L["blue"] = "синий"
	L["BlueNodesSG"] = "Синие Блестящие Узлы"
	L["shiny"] = "блестящий"
	L["Enabling"] = "Включение опции %s."
	L["defaultDescript"] = "Этот параметр включает только узлы отслеживания игроков/НПС меньшего размера."
	L["circleDescript"] = "Этот параметр включает узлы отслеживания игроков/НПС меньшего размера и синие круги для узлов сбора."
	L["circleShinyDescript"] = "Этот параметр включает узлы отслеживания игроков/НПС меньшего размера, синие круги для узлов сбора и золотые блестящие иконки для особых узлов сбора."
	L["blueDescript"] = "Этот параметр включает узлы отслеживания игроков/НПС меньшего размера и синий цвет для узлов сбора."
	L["blueShinyDescript"] = "Этот параметр включает узлы отслеживания игроков/НПС меньшего размера, синий цвет для узлов сбора и золотые блестящие иконки для особых узлов сбора."
	L["ThanksForUsing"] = "Спасибо, что используете %s. Этот аддон заменяет стандартные иконки на миникарте, особенно для отслеживания охотников, а также для окрашивания узлов сбора в синий цвет."
	L["InvalidCommand"] = "Недопустимая подкоманда. "
	L["CommandsAvailable"] = "Доступные команды:"
	L["AdditionalCommands"] = "Дополнительные подкоманды:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "Включение "
	L["TempDisable"] = "Временное отключение "
	L["help"] = "помощь"

return end

if LOCALE == "koKR" then
	-- Korean translations go here
	L["KMI"] = "키보드의 미니맵 아이콘"
	L["kmi"] = "키보드의 미니맵 아이콘"
	L["slashkmi"] = "/키미"
	L["KMIVerbose"] = "키보드의 미니맵 아이콘"
	L["IncompatibleFound"] = "호환되지 않는 애드온을 실행 중인 것 같습니다: %s. 이 애드온은 더 이상 업데이트되지 않습니다. UI를 다시 로드하고 비활성화하시겠습니까?"
	L["DerangementMinimapBlips"] = "Derangement의 미니맵 아이콘"
	L["CurrentVersion"] = "현재 애드온 버전"
	L["NotRecognized"] = "인식되지 않음. "
	L["UpdateTo"] = "업데이트하십시오 "
	L["ConvertingData"] = "데이터를 새로운 형식으로 변환 중"
	L["MinimapTexture"] = "미니맵 아이콘 텍스처"
	L["MinimapTextureTT"] = "미니맵 아이콘을 대체할 텍스처를 선택하세요. 여기에 채집 노드 및 NPC 유닛 아이콘이 포함될 수 있습니다."
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "노드를 원으로 표시"
	L["circle"] = "원"
	L["NodesAsCirclesSG"] = "반짝이는 원으로 표시된 노드"
	L["BlueNodes"] = "파란색 노드"
	L["blue"] = "파란색"
	L["BlueNodesSG"] = "반짝이는 파란색 노드"
	L["shiny"] = "반짝임"
	L["Enabling"] = "%s 옵션을 활성화 중입니다."
	L["defaultDescript"] = "이 옵션에는 더 작은 아군 플레이어/NPC 추적 노드만 포함됩니다."
	L["circleDescript"] = "이 옵션에는 더 작은 아군 플레이어/NPC 추적 노드와 채집 노드를 위한 파란색 원만 포함됩니다."
	L["circleShinyDescript"] = "이 옵션에는 더 작은 아군 플레이어/NPC 추적 노드, 채집 노드를 위한 파란색 원, 그리고 특별한 채집 노드를 위한 금색 반짝이는 아이콘이 포함됩니다."
	L["blueDescript"] = "이 옵션에는 더 작은 아군 플레이어/NPC 추적 노드와 채집 노드를 위한 파란색이 포함됩니다."
	L["blueShinyDescript"] = "이 옵션에는 더 작은 아군 플레이어/NPC 추적 노드, 채집 노드를 위한 파란색, 그리고 특별한 채집 노드를 위한 금색 반짝이는 아이콘이 포함됩니다."
	L["ThanksForUsing"] = "%s을(를) 사용해 주셔서 감사합니다. 이 애드온은 기본 미니맵 아이콘을 대체하며, 특히 사냥꾼 추적 및 채집 노드를 파란색으로 표시합니다."
	L["InvalidCommand"] = "잘못된 하위 명령입니다. "
	L["CommandsAvailable"] = "사용 가능한 명령어:"
	L["AdditionalCommands"] = "추가 하위 명령어:"
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "활성화 중 "
	L["TempDisable"] = "임시 비활성화 중 "
	L["help"] = "도움말"

return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	L["KMI"] = "键盘的迷你地图图标"
	L["kmi"] = "键盘的迷你地图图标"
	L["slashkmi"] = "/键图"
	L["KMIVerbose"] = "键盘的迷你地图图标"
	L["IncompatibleFound"] = "您似乎运行了不兼容的插件: %s。该插件不再更新。是否重新加载界面并禁用它？"
	L["DerangementMinimapBlips"] = "Derangement 的迷你地图图标"
	L["CurrentVersion"] = "当前插件版本"
	L["NotRecognized"] = "无法识别。"
	L["UpdateTo"] = "请更新到"
	L["ConvertingData"] = "正在将数据转换为新格式"
	L["MinimapTexture"] = "迷你地图图标纹理"
	L["MinimapTextureTT"] = "选择一个纹理来替换迷你地图图标。这些可能包括采集节点和NPC单位的图标。"
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "节点显示为圆形"
	L["circle"] = "圆形"
	L["NodesAsCirclesSG"] = "节点显示为闪亮圆形"
	L["BlueNodes"] = "蓝色节点"
	L["blue"] = "蓝色"
	L["BlueNodesSG"] = "蓝色闪亮节点"
	L["shiny"] = "闪亮"
	L["Enabling"] = "正在启用 %s 选项。"
	L["defaultDescript"] = "此选项仅包括较小的友方玩家/NPC 跟踪节点。"
	L["circleDescript"] = "此选项仅包括较小的友方玩家/NPC 跟踪节点，以及采集节点的蓝色圆形。"
	L["circleShinyDescript"] = "此选项包括较小的友方玩家/NPC 跟踪节点，采集节点的蓝色圆形，以及特殊采集节点的金色闪亮图标。"
	L["blueDescript"] = "此选项仅包括较小的友方玩家/NPC 跟踪节点，以及蓝色的采集节点。"
	L["blueShinyDescript"] = "此选项包括较小的友方玩家/NPC 跟踪节点，蓝色的采集节点，以及特殊采集节点的金色闪亮图标。"
	L["ThanksForUsing"] = "感谢您使用 %s。此插件替换了默认的迷你地图图标，特别是猎人跟踪以及蓝色采集节点的显示。"
	L["InvalidCommand"] = "无效的子命令。 "
	L["CommandsAvailable"] = "可用命令："
	L["AdditionalCommands"] = "其他子命令："
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "启用 " -- includes space
	L["TempDisable"] = "暂时禁用 " -- includes space
	L["help"] = "帮助"

return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	L["KMI"] = "鍵盤的迷你地圖圖示"
	L["kmi"] = "鍵盤的迷你地圖圖示"
	L["slashkmi"] = "/鍵圖"
	L["KMIVerbose"] = "鍵盤的迷你地圖圖示"
	L["IncompatibleFound"] = "您似乎運行了不兼容的插件: %s。該插件不再更新。是否重新加載界面並禁用它？"
	L["DerangementMinimapBlips"] = "Derangement 的迷你地圖圖示"
	L["CurrentVersion"] = "當前插件版本"
	L["NotRecognized"] = "無法識別。" -- includes space
	L["UpdateTo"] = "請更新到 "
	L["ConvertingData"] = "正在將數據轉換為新格式"
	L["MinimapTexture"] = "迷你地圖圖示材質"
	L["MinimapTextureTT"] = "選擇一個材質來替換迷你地圖圖示。這些可能包括採集節點和 NPC 單位的圖示。"
	L["Default"] = DEFAULT
	L["default"] = string.lower(DEFAULT)
	L["NodesAsCircles"] = "節點作為圓形顯示"
	L["circle"] = "圓形"
	L["NodesAsCirclesSG"] = "節點作為閃亮圓形顯示"
	L["BlueNodes"] = "藍色節點"
	L["blue"] = "藍色"
	L["BlueNodesSG"] = "閃亮藍色節點"
	L["shiny"] = "閃亮"
	L["Enabling"] = "啟用 %s 選項。" -- includes space
	L["defaultDescript"] = "此選項僅包含較小的友方玩家/NPC 跟蹤節點。" -- includes space
	L["circleDescript"] = "此選項僅包含較小的友方玩家/NPC 跟蹤節點，以及採集節點的藍色圓形。" -- includes space
	L["circleShinyDescript"] = "此選項包括較小的友方玩家/NPC 跟蹤節點，採集節點的藍色圓形，以及特殊採集節點的金色閃亮圖示。" -- includes space
	L["blueDescript"] = "此選項僅包含較小的友方玩家/NPC 跟蹤節點，以及藍色的採集節點。" -- includes space
	L["blueShinyDescript"] = "此選項包括較小的友方玩家/NPC 跟蹤節點，藍色的採集節點，以及特殊採集節點的金色閃亮圖示。" -- includes space
	L["ThanksForUsing"] = "感謝您使用 %s。此插件替換了默認的迷你地圖圖示，特別是獵人追蹤以及藍色採集節點的顯示。" -- includes space
	L["InvalidCommand"] = "無效的子命令。 " -- includes space
	L["CommandsAvailable"] = "可用命令："
	L["AdditionalCommands"] = "其他子命令："
	L["disable"] = string.lower(DISABLE)
	L["enable"] = string.lower(ENABLE)
	L["Enabling"] = "啟用 " -- includes space
	L["TempDisable"] = "暫時禁用 " -- includes space
	L["help"] = "幫助"

return end
