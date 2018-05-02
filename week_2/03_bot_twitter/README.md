Bot Twitter et Gem Ruby
-----------------------

Aujourd'hui, nous allons faire un bot Twitter, qui va s'amuser à twitter à notre place ou a récupérer des emails sur une zone géographique en particulier. <br>

Pour pouvoir faire cet exploit, il va nous falloir utiliser des Gems. Les gems sont des petite librairies que l'on installe dans son projet pour en utiliser les fonctions. Les gems c'est le bien, il y'en a tout le temps et il est très important de comprendre leur fonctionnement. 
* Voici un petit tuto sympa pour comprendre ce qu'est une gem
* Voici un billet du Wagon sur les gems indispensables pour Rails et Ruby

Aujourd'hui, nous allons voir deux gems : 

PRY est un puissant outil de ruby qui permet de faire du debugging très facilement.
------------------------------------------------------------------

Pry est une Gem extrêmement pratique qui permet de faire du debugging de programme très facilement. La plupart du temps, quand ton programme plante, il s'arrête et tu es obligé de tout relancer, en mettant des print et en espérant trouver le bug. Et bien avec pry, tu peux lancer un IRB-like en plein milieu de ton programme, juste avant qu'il plante, tester tes variables, tes lignes de code, et ainsi trouver d'où vient ton erreur
À faire

* Va jeter un oeil sur la [la documentation de PRY](https://github.com/pry/pry) sur GitHub
* Voici [un petit tutoriel](https://www.youtube.com/watch?v=dPDrgpWakrA) qui explique en 12 minutes comment utiliser la gem Pry

Gem Twitter
---------------

Tu vas apprendre à utiliser la Gem Twitter et faire tes premiers bots.<br>

Tu vas apprendre à te servir de la Gem Twitter, qui te sera utile pour faire des bots Twitter

#### 1- préparations

Tu n'as qu'à commencer par installer la fameuse [gem Twitter](https://github.com/sferik/twitter) qui sera notre principale ressource pour faire du Twitter. Tu dois [lire un peu la doc](https://github.com/sferik/twitter), lire les exemples pour voir et essayer de comprendre ce que tu peux faire avec.

#### 2- Ton premier bot

Dans ce petit tutoriel, je vais te montrer comment faire marcher la gem Twitter. C'est beau, tant d'émotions. Voici à quoi va ressembler un programme Twitter :

```Ruby
 # ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "TACLÉTROPBIEN"
  config.consumer_secret     = "TACLÉTROPBIEN"
  config.access_token        = "TACLÉTROPBIEN"
  config.access_token_secret = "TACLÉTROPBIEN"
end

# ligne qui permet de tweeter
client.update('Mon premier tweet en ruby !!!!')
```

Là tu te demandes "mais comment Twitter sait-il que j'ai envie de tweeter avec mon compte dans mon prgramme ? L'informatique y'a beaucoup de magie, mais j'ai envie de paramétrer pour tweeter avec mon compte". Et bien voici tout l'intérêt des lignes concernant les clés d'API.

#### 2.1- L'API

EN gros, une API permet de profiter des services d'un site sans passer par l'interface graphique du site. Tu vas sur une adresse web, dans laquelle il y a des clés d'APIs, qui permet d'effectuer des actions du service. Ainsi, il est possible de tweeter, ou d'envoyer des messages Facebook, ou encore de récupérer une liste de messages d'un chan Slack en utilisant les APIs de ces services. Pour la majorité des gros sites, tu pourras trouver des wrappers d'APIs en ruby, ce qui te permettra d'aviter de coder toutes les reqûetes à la main : il de suffira de rentrer tes clés d'APIs, puis de faire `facebook.update_status("Mon statut !")` et hop trop facile.<br>

Bref, avant de commencer toute chose, il te faudra obtenir des clés d'APIs pour faire marcher le programme. Pour ceci, il te faut :

* Un compte twitter
* Un numéro de téléphone

Si tu as trop peur de filer ton numéro de tel à Twitter (ouh les méchants Twitter qui vont hacker tes données 👻), prends celui de ton frère, voisin, ou achète un numéro jetable. Ensuite, nous allons créer une application avec ton compte Twitter, afin que ces derniers te donnent des clés d'APIs qui permettront d'utiliser la fameuse API. Va sur [https://apps.twitter.com/](https://apps.twitter.com/) pour créer ta première application Twitter. Une fois que tu te seras inscrit avec validation du numéro de téléphone, tu pourras créer ton app.<br>

Dans [l'écran de création d'application](https://s3.amazonaws.com/codebycodes-blog-images/images/Screen+Shot+2015-08-31+at+8.33.03+AM.png), Twitter va te demander un nom d'application, une description, et une URL. Mets ce que tu veux. Le nom doit être unique donc `test` sera sûrement déjà pris ;)<br>

Une fois que tu as créé ton app, Twitter va te rediriger vers la page de ton application. Tu n'auras plus qu'à cliquer sur la section "Keys and Access Tokens" Tu devrais y trouver a `consumer_key` et ta `consumer_secret`. Il ne te reste plus qu'à récupérer les deux autres clés en scrollant et en allant vers "Token Actions" pour créer les `access_tokens`. Tu n'auras plus qu'à récupérer les `access_token` et `access_token_secret` et à toi la gloire.

Maintenant tu devrais avoir tout le nécessaire pour remplir les lignes suivantes :
```Ruby
require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "TACLÉTROPBIEN"
  config.consumer_secret     = "TACLÉTROPBIEN"
  config.access_token        = "TACLÉTROPBIEN"
  config.access_token_secret = "TACLÉTROPBIEN"
end
p client
```
Évidemment, la clé est à mettre au format string. Si tu la mets sans les guillemets, il va te jeter en te disant qu'il n'arrive pas à trouver la variable `JZ5DDSCp5cEbTzvSnWIxVR1ey` 😉 <br>

Si tout va bien, le programme devrait te retourner un truc du genre :

`#<Twitter::REST::Client:0x007fe03d31db78 @consumer_key="clé", @consumer_secret="clé", @access_token="clé", @access_token_secret="clé">`

#### 2.2- Balance ton tweet !

Maintenant il ne te reste plus qu'à tweeter avec la méthode `#update(string)`. Rajoute en dernière ligne `client.update('Mon premier tweet en ruby !!!!')` et admire ton travail bien fait.<br>

Tu peux commencer à voir [les méthodes données en exemple](https://github.com/sferik/twitter#usage-examples) dans le repo GitHub. Ou bien voir ce que tu peux faire avec le [Streaming](https://github.com/sferik/twitter#streaming), qui permet de réagir en fonction de tweets.<br>

#### 2.3- Avant de se quitter

Maintenant que tu as balancé ton premier `"Hello world"` sur Twitter, tu vas partir en bot Twitter. Mais puisque nous ne sommes pas comme ça, on va te donner des conseils.

Clés d'APIs et GitHub
---------------------

Une chose importante à noter, mais il ne faut JAMAIS mettre en ligne un repo GitHub public avec des clés d'APIs. Si tu as "peur" de donner ton numéro de tel à Twitter mais que tu balances tes clés d'APIs en public, inverse vite ces habitudes pour éviter de te retrouver avec des factures bizarres de 16000€ et toutes tes données accessibles à qui le veut. En gros, il existe plein de bots qui scrappent GitHub pour récupérer les clés d'APIs de développeurs débutants et qui les utilisent pour faire des choses complètement illégales.

Comment faire pour éviter ceci ? Plusieurs méthodes :

* Tu peux simplement retirer les clés de ton programme au moment de push sur GitHub
* Tu peux utiliser la gem DotEnv qui permet de bien gérer ça facilement. [Ce tutoriel explique brièvement comment l'installer](https://github.com/codeunion/dotenv-example), mais nous y reviendrons sûrement lors d'un atelier prochainement pour ceux qui sont moins à l'aise
* Tu peux faire en sorte que tes clés soient passées en ARGV, comme ça tu les rentres uniquement dans ton terminal. Voici un [tuto sur les ARGV en Ruby](https://github.com/codeunion/dotenv-example).
* Tu peux faire un programme du genre :

```Ruby
   p "consumer_key stp ?"
   twitter_consumer_key = gets.chomp
   p "consumer_secret stp ?"
   twitter_consumer_secret = gets.chomp
   p "consumer_token stp ?"
   twitter_consumer_token = gets.chomp
   p "consumer_token_secret stp ?"
   twitter_consumer_token_secret = gets.chomp

   client = Twitter::REST::Client.new do |config|
     config.consumer_key        = twitter_consumer_key
     config.consumer_secret     = twitter_consumer_secret
     config.access_token        = twitter_consumer_token
     config.access_token_secret = twitter_consumer_token_secret
   end

   # le reste de ton programme
```

Les plus malins auront remarqué que y'a plus de guillemets pour les clés. Oui car l'on appelle la variable déclarée plus haut. Enfin, les praticiens remarqueront que c'est très fastidieux de demander 4 clés d'APIs à chaque lancement de programme. Et bien nous allons voir PRY héhé.

PRY
---------------

Aujourd'hui tu vas voir PRY, une des gems les plus cools de Ruby. Ton bot Twitter au début risque de se pêter et balancer des erreurs toutes les 2 fois où tu travailles avec. Ainsi, utiliser PRY pour avancer à tâton dans ton programme et avoir la main dessus est plus que recommandé. Cela te sera utile pour deux raisons :

* Tu vas avancer bien plus vite, car tu testes très rapidement si tes lignes sont valables
* Pas besoin de redémarrer ton programme quand tu auras un bug. Au bout d'un certain nombre de `Twitter::REST::Client.new`,Twitter bloque ton compte pour 5-10 minutes. Ceci est dû au fait que tu redémarres ton programme trop souvent, ce qui est normal quand on débute. Binding.pry permet d'éviter de redémarrer ton programme puisque les erreurs qu'il te renvoient ne le cassent pas.



PROJET DU JOUR : Bot Twitter
------------------------------------

Tu t'es toujours demandé comment un faisait des bots twitter qui spammaient la Terre entière ? Ceci est ta chance.

#### 1- Mise en chauffe

Pour te chauffer, fais un bot qui va twitter "Bonjour monde !". Ensuite, créé un bot qui va streamer tous les tweets qui mentionnent tea, ou coffee. Indice : la doc de la gem twitter devrait pouvoir t'aider ;)

#### 2- Les chers journalistes

Les journalistes sont quasimment le seul type de gens qui croient que Twitter c'est encore cool et sont tous sur la plateforme. Profitons-en ! Fais un bot Twitter qui va contacter les journalistes et leur parler de l'INSEEC et de The Hacking Project ou de ton projet perso.<br>

Il y a plusieurs techniques pour ceci :

* Un bot qui prend une liste de journalistes, et qui leur envoie tous un tweet du genre "On a des cours trop cool sur la programmation à l'INSEEC en partenariat avec The Hacking Project et ce tweet vient d'un bot que j'ai codé !"
* Un bot qui like tous les tweets d'une liste de journalistes. Sur le compte en description y'aura marqué un truc du genre "Élève à l'INSEEC, cours The Hacking Project"
* Un bot qui like tous les tweets faits par une certaine liste de journalistes, dès qu'ils sortent (avec le stream)
* Ton imagination sera ta seule limite

Ces techniques ont chacunes des limites, qui sont plus ou moins permissives (spoiler : faire un tweet qui mentionne le gars est la moins permissives des techniques, et peut découler à un ban rapide ;) ), à toi de tester les limites, et même de pimper ton programme pour qu'une fois cette limite atteinte, il passe à un autre compte par exemple. Le métier du Growth Hacker est de tester ces limites et d'itérer sur tes programmes en fonction <br>

Pour ce genre de bot, afficher ce qui se passe avec des puts est plutôt malin. Enfin, dans le README de ton repo GitHub, tu dois expliquer ce que le bot fait, et qu'est-ce qu'il est arrivé à faire lors de ton après-midi de code.<br>

Puisque c'est toi, voici un array de handles de journalistes :

`["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]`

Et puisque c'est toi, petit tips pour itérer dessus : 
```Ruby
journalist_array = ['@nom_des_journalistes'] # remplace cet array par celui du dessus
journalist_array.each do |a|
	# ton code ici 
end
```

Si tu n'est pas à l'aise avec le fait des spammer des pauvres petits twittos sans défenses, spamez-vous entre vous ! 



