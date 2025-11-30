CREATE TABLE post
(
    id IDENTITY,
    slug      VARCHAR(100) NOT NULL UNIQUE,
    author    VARCHAR(100) NOT NULL,
    title     VARCHAR(255) NOT NULL,
    perex     TEXT         NOT NULL,
    body      TEXT         NOT NULL,
    published DATE
);

CREATE
    INDEX ON post(published);



INSERT INTO post (slug, author, title, perex, body, published) VALUES
(
'jaro-ve-meste-2025',
'Anna Nováková',
'Jaro ve městě: 5 tipů, jak si užít první teplé dny',
'První sluneční paprsky lákají ven – ale kam vyrazit, když žijete ve městě?',
'Jaro je ideálním obdobím k objevování městských parků, kaváren s venkovním posezením a kulturních akcí. V článku se podíváme na pět tipů, které vám pomohou dostat z prvních teplých dnů maximum...',
'2025-03-12'
),
(
'minimalismus-v-praxi',
'Pavel Dvořák',
'Minimalismus v praxi: Jak začít a neztratit motivaci',
'Minimalismus není jen úklid věcí – je to způsob myšlení i života.',
'Většina lidí začíná minimalismus řešit ve chvíli, kdy se cítí zahlcení. Pokud chcete udělat první kroky, zaměřte se na malé změny. Tříďte po místnostech, stanovte si limity a určete si, co vám skutečně dělá radost...',
'2025-01-20'
),
(
'technologie-2025',
'Lucie Vlková',
'Technologie, které budou hýbat rokem 2025',
'Rok 2025 přináší řadu inovací – od chytré domácnosti po vývoj AI.',
'Technologický pokrok je rychlejší než kdy dříve. V článku se podíváme na hlavní trendy, jako je personalizovaná umělá inteligence, bezpečnější IoT řešení a postupný nástup kvantových zařízení do běžné praxe...',
'2025-02-10'
),
(
'domaci-kavarna',
'Tereza Malá',
'Domácí kavárna: Jak si připravit kávu jako profesionál',
'Milujete kávu? Díky několika jednoduchým trikům můžete mít doma skoro baristický zážitek.',
'Dobrá káva začíná u kvalitních zrn a správného mletí. Podíváme se na to, jaké metody přípravy jsou nejvhodnější pro začátečníky, jak vybrat správný mlýnek a jak si vytvořit svou malou domácí kavárnu...',
'2025-04-05'
),
(
'cestovani-po-cesku',
'Martin Konečný',
'Cestování po Česku: Nenápadná místa, která stojí za to navštívit',
'Česko je plné skrytých koutů, o kterých většina turistů ani netuší.',
'Pokud vás láká objevování méně známých lokalit, tento článek je pro vás. Ukážeme si několik nenápadných, ale kouzelných míst — od zapomenutých rozhleden až po přírodní rezervace, kde nepotkáte téměř nikoho...',
'2025-05-18'
),
(
'letni-recepty-rychle-a-sviezi',
'Kateřina Horáková',
'Letní recepty: rychlé a svěží',
'V horkých dnech se nikomu nechce trávit hodiny v kuchyni.',
'Připravili jsme výběr nejlepších letních receptů, které zvládnete do dvaceti minut. Od osvěžujících salátů až po lehké dezerty...',
NULL
),
(
'jak-na-prvni-byt',
'Tomáš Jílek',
'Jak na první byt: rady, na které se zapomíná',
'Koupě prvního bytu může být <b>stresující</b> zážitek.',
'V článku se podíváme na skryté náklady, nejčastější chyby při komunikaci s realitkou a tipy, jak vyjednat lepší cenu...',
'2025-06-01'
),
(
'udrzitelna-moda',
'Eliška Štrbová',
'Udržitelná móda v roce 2025',
'Udržitelná móda už není jen trend, ale nutnost.',
'Ukážeme si, jak poznat skutečně ekologické značky, čemu se vyhýbat a jak sestavit kapslový šatník na celý rok...',
NULL
),
(
'zahradka-pro-zacatecniky',
'Oldřich Krása',
'Zahrádka pro začátečníky',
'Pěstování vlastní zeleniny nemusí být složité.',
'V článku najdete přehled rostlin vhodných pro nováčky a postup, jak začít i na malém balkoně...',
'2025-03-22'
),
(
'prvni-kroky-s-fotografii',
'Simona Doležalová',
'První kroky s fotografií: jak začít tvořit',
'Každý může fotit, ale ne každý fotí dobře.',
'Projdeme si základní nastavení fotoaparátu, kompozici a tipy, jak své snímky okamžitě zlepšit...',
NULL
),
(
'behani-po-praci',
'Radek Benda',
'Běhání po práci: jak se donutit a nepřestat',
'Po dlouhém dni je těžké najít motivaci na pohyb.',
'Ukážeme si krátké tréninky, které lze stihnout i během nabitého dne, a několik triků, jak si běhání zamilovat...',
'2025-04-15'
),
(
'psychicka-pohoda-v-kancelari',
'Veronika Mlynářová',
'Psychická pohoda v kanceláři',
'Práce v kanceláři může být náročná na hlavu.',
'Zjistíme, jak na mikro-pauzy, organizaci práce a lepší komunikaci s kolegy pro příjemnější pracovní prostředí...',
NULL
),
(
'domaci-wellness',
'Michaela Vaňková',
'Domácí wellness: jak si dopřát relax bez drahých procedur',
'Wellness už nemusí být luxus.',
'Naučíme vás vytvořit si doma relaxační rituály pomocí levných a dostupných surovin...',
'2025-02-08'
),
(
'historie-internetu',
'Jakub Plíšek',
'Stručná historie internetu',
'Internet používáme každý den, ale víme, jak vznikl?',
'Přehledně se podíváme na hlavní milníky od ARPANETu až po dnešní éru cloudových služeb...',
NULL
),
(
'jak-prezit-zimu',
'Klára Benešová',
'Jak přežít zimu zdravě a v pohodě',
'Zima může být náročné období pro tělo i mysl.',
'Poradíme, jak posílit imunitu, udržet si dobrou náladu a vyhnout se nejčastějším zimním nástrahám...',
'2025-01-05'
),
(
'neobycejne-knizky',
'Jana Hrdličková',
'Neobyčejné knížky, které stojí za přečtení',
'Někdy nás kniha zasáhne v ten správný čas.',
'Přinášíme výběr méně známých titulů, které si získaly srdce čtenářů po celém světě...',
NULL
),
(
'pracovni-ritualy',
'Adam Soukup',
'Pracovní rituály pro produktivnější den',
'Malé návyky dokážou velké věci.',
'Podíváme se na jednoduché rituály, které mohou zásadně zlepšit váš pracovní den...',
'2025-07-01'
),
(
'zivot-bez-plastu',
'Kristýna Řehořová',
'Život bez plastů: jde to i jednoduše',
'Plastů je kolem nás příliš.',
'Ukážeme si způsoby, jak snížit jejich používání v domácnosti i na cestách...',
NULL
),
(
'renovace-nabyteku',
'Petr Dlouhý',
'Renovace nábytku pro začátečníky',
'Starý nábytek může znovu ožít.',
'Podíváme se na základní techniky broušení, natírání a lakování s praktickými tipy...',
'2025-03-30'
),
(
'hudba-na-koncentraci',
'Lucie Demeterová',
'Hudba na koncentraci: co funguje a proč',
'Hudba dokáže ovlivnit naši výkonnost.',
'Zjistíme, jaké žánry podporují soustředění a jak je využít při studiu či práci...',
NULL
),
(
'kratke-vyletiky',
'Michal Chmel',
'Krátké výletíky na odpoledne',
'Ne každý má čas na celodenní výlety.',
'Přinášíme tipy na trasy vhodné pro rodiny, páry i sólo objevitele...',
'2025-05-12'
),
(
'domaci-pecivo',
'Hana Zajícová',
'Domácí pečivo bez složitostí',
'Vůně čerstvého chleba nic nenahradí.',
'Naučíme vás jednoduše připravit domácí housky, chléb i rohlíky, a to i bez pekárny...',
NULL
),
(
'svetlo-v-interieru',
'David Vondráček',
'Jak pracovat se světlem v interiéru',
'Osvětlení výrazně ovlivňuje atmosféru domova.',
'Ukážeme si různé typy osvětlení a jejich využití pro útulnější bydlení...',
'2025-06-18'
),
(
'zaciname-s-investicemi',
'Barbora Stránská',
'Začínáme s investicemi: jednoduchý průvodce',
'Investování nemusí být děsivé.',
'Článek vysvětluje základní principy, rizika a strategie pro úplné začátečníky...',
NULL
),
(
'jak-si-uzit-volno',
'Ondřej Malík',
'Jak si užít volno, aniž byste měli pocit, že jen prokrastinujete',
'<b>Volný čas</b> často neumíme využít naplno.',
'Povíme si, jak najít rovnováhu mezi odpočinkem a pocitem smysluplnosti...',
'2025-04-27'
),
('urban-garden-tips', 'Lukáš Novák', 'Urban Gardening: Jak začít v malém', 'Pěstování zeleniny ve městě není nemožné.', 'Článek o tom, jak si založit vlastní malou zahrádku na balkoně nebo parapetu.', '2025-06-12'),
('morning-routine', 'Jana Černá', 'Ranní rutina pro produktivní den', 'Jak správně nastartovat svůj den.', 'Tipy a triky pro efektivní ranní rutinu, která zvýší tvou produktivitu.', NULL),
('ai-in-education', 'Petr Svoboda', 'Umělá inteligence ve školství', 'AI mění způsob, jak se učíme.', 'Přehled využití AI ve vzdělávání, od virtuálních učitelů po personalizované výukové plány.', '2025-07-01'),
('travel-japan', 'Eva Malá', 'Cestování po Japonsku', 'Průvodce pro začátečníky.', '<p>Zkušenosti z cestování po Japonsku, tipy na města, jídlo a kulturu.</p>', NULL),
('healthy-snacks', 'Martin Dvořák', '10 zdravých svačin do práce', 'Svačina, která tě udrží fit.', 'Seznam jednoduchých a chutných svačin, které se dají snadno připravit do práce.', '2025-05-20'),
('coding-best-practices', 'Anna Křížová', 'Nejlepší praktiky psaní kódu', 'Jak psát čistý a udržovatelný kód.', 'Praktické tipy a vzory pro vývojáře, které zlepší kvalitu vašeho kódu.', NULL),
('mental-health-tips', 'Tomáš Horák', 'Jak pečovat o duševní zdraví', 'Jednoduché kroky pro lepší pohodu.', 'Článek obsahuje techniky a rady, jak zvládat stres a zlepšit psychickou kondici.', '2025-08-10'),
('photography-basics', 'Klára Bílová', 'Základy focení pro začátečníky', 'Chceš lépe fotit? Začni tady.', 'Tipy na kompozici, světlo a nastavení fotoaparátu pro začátečníky.', NULL),
('budget-travel', 'Jakub Němec', 'Cestování s nízkým rozpočtem', 'Jak vidět svět, aniž bys zbankrotoval.', 'Praktické rady, jak plánovat levné cestování, ubytování a stravu.', '2025-04-15'),
('plant-based-diet', 'Veronika Štěpánová', 'Výhody rostlinné stravy', 'Proč se více lidí rozhoduje pro rostlinnou stravu.', 'Přehled zdravotních benefitů a praktických tipů pro přechod na plant-based diet.', NULL),
('digital-detox', 'Petra Holá', 'Digitální detox: proč a jak', 'Jak na chvíli vypnout od technologií.', 'Praktické tipy, jak omezit čas u obrazovky a zlepšit své soustředění.', '2025-03-10'),
('home-workout', 'David Konečný', 'Cvičení doma bez vybavení', 'Udrž se fit i doma.', 'Jednoduché cviky, které zvládne každý doma bez speciálního vybavení.', NULL),
('sustainable-fashion', 'Lucie Urbanová', 'Udržitelná móda: základní principy', 'Jak nakupovat ekologicky a eticky.', 'Rady, jak vybrat oblečení, které je šetrné k životnímu prostředí.', '2025-09-05'),
('self-publishing-tips', 'Marek Jelínek', 'Jak vydat vlastní knihu', 'Přehled možností self-publishingu.', 'Krok za krokem návod, jak napsat, vydat a propagovat vlastní knihu.', NULL),
('mindfulness-practice', 'Ivana Šimková', 'Mindfulness: každodenní praxe', 'Jak být více v přítomném okamžiku.', 'Cvičení a techniky mindfulness, které lze snadno zařadit do každého dne.', '2025-02-28'),
('tech-trends-2025', 'Filip Dvořák', 'Nejnovější technologické trendy', 'Co nás čeká v roce 2025.', 'Přehled klíčových technologických trendů a inovací, které ovlivní budoucnost.', NULL),
('vegan-recipes', 'Martina Králová', 'Snadné veganské recepty', 'Chutné a rychlé jídlo bez masa.', 'Recepty na jednoduché a zdravé veganské pokrmy pro každodenní vaření.', '2025-07-22'),
('stress-management', 'Jan Novotný', 'Jak zvládat stres', 'Techniky pro lepší psychickou odolnost.', 'Praktické rady, jak snížit stres a zvýšit odolnost vůči náročným situacím.', NULL),
('cycling-tips', 'Barbora Malá', 'Tipy pro cyklisty začátečníky', 'Bezpečně a efektivně na kole.', 'Rady pro začínající cyklisty ohledně techniky, výbavy a bezpečnosti.', '2025-06-30'),
('budget-cooking', 'Tomáš Kučera', 'Levné a chutné vaření', '<i>Jak uvařit jídlo do 100 Kč.</i>', 'Tipy a recepty pro levné, rychlé a chutné pokrmy pro každodenní život.', NULL);
commit;
