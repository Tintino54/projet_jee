<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Comment ça marche</tiles:putAttribute>
    <tiles:putAttribute name="body">
        <script src="resources/js/datepicker.js"></script>
        <div id="body" class="container-fluid project-bg">
        <div class="col-lg-3">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a data-toggle="pill" href="#home">Les fondamentaux</a></li>
                <li><a data-toggle="pill" href="#porteurs">Aide aux porteurs de projets</a></li>
                <li><a data-toggle="pill" href="#contribs">Aide aux contributeurs</a></li>
                <li><a data-toggle="pill" href="#confidentialite">Confidentialité</a></li>
            </ul>
        </div>
        <div class="tab-content col-lg-9 white-bg">
            <div id="home" class="tab-pane fade in active">
                <h2 id="chap-fondamentaux" class="titre">Le financement participatif, c'est quoi?</h2>
                <p>
                    Le financement participatif (ou crowdfunding en anglais) consiste à faire financer son projet par la foule. 
                    <strong>Sur MyMajorCompany, des créateurs de projets de tous horizons peuvent présenter leur projet à des milliers d’internautes et collecter les fonds nécessaires à leur  réalisation. </strong> Ce procédé a permis à des dizaines de milliers de projets de voir le jour à travers le monde.
                </p>
                <h2 class="titre">Comment ça marche ?</h2>
                <p>
                    Chaque créateur définit le montant dont il a besoin pour réaliser son projet (sa jauge) et la durée de sa collecte. L'objectif du porteur de projet est de remplir sa jauge avant sa date de fin de collecte. Pour convaincre les internautes de le soutenir, il présente son projet et fixe les contreparties qu'il offrira à ses contributeurs si son objectif de collecte est atteint.
                </p>
                <h2 class="titre">Que se passe-t-il si le projet n’arrive pas à 100% à la fin de sa période de collecte ?</h2>
                <div>
                    <p>
                        Si le projet n’a pas réuni le montant de sa jauge à la fin de sa période de collecte, les contributeurs récupèrent leur participation. Elle est automatiquement versée sur leur 
                        <strong>Crédit</strong>.
                    </p>
                    <p>
                        Ils peuvent utiliser ce crédit pour participer à un autre projet ou en demander le remboursement sur leur compte en banque (seuls les frais de transaction, dont le mode de calcul est précisément exposé à l’article 1 de nos conditions générales d’utilisation, ne sont pas remboursés).
                    </p>
                </div>
                <h2 class="titre">Et si le projet atteint son objectif avant la fin de sa période de collecte ?</h2>
                <div>
                    <p>
                        Les internautes peuvent soutenir un projet tout au long de sa période de collecte même si sa jauge est déjà remplie. Il est fréquent que des projets dépassent donc les 100%.
                    </p>
                    <p>
                        La plupart du temps, le porteur du projet explique comment sera dépensé le montant allant au-delà de sa jauge. Ce dernier doit également s’assurer qu’il pourra délivrer les contreparties associées aux participations supplémentaires.
                    </p>
                </div>
                <h2 class="titre" id="chap-annulermaparticipation">Puis-je annuler ma participation en cours de route ? </h2>
                <p>
                    Tant qu’un projet n'a pas atteint son objectif de collecte (les 100% de sa jauge), ses contributeurs peuvent à tout moment annuler leur participation. Elle est versée sur leur Crédit et ils peuvent en demander le remboursement sur leur compte en banque (seuls les frais de transaction, dont le mode de calcul est précisément exposé à l’article 1 de nos conditions générales d’utilisation, ne sont pas remboursés). A contrario, lorsque l'objectif de collecte est atteint, les contributions deviennent définitives et ne peuvent donner lieu à un remboursement a posteriori.
                    <br>
                    Vous bénéficiez de plus en tant que consommateur d’un droit de rétractation dont les modalités sont exposées en détail à l’article 12 de nos Conditions Générales d’Utilisation.
                </p>
                <h2 id="chap-resonsablerealisation" class="titre">Qui est responsable de la réalisation du projet et de la livraison des contreparties ?</h2>
                <p>
                    C'est le porteur de projet qui est responsable de la bonne réalisation du projet et de la livraison de ses contreparties. Son nom est systématiquement affiché en haut de sa page projet et il peut être contacté facilement par ses contributeurs grâce au bouton "envoyer un message" situé sur sa page à droite de sa photo de profil.
                </p>
                <h2 class="titre">En savoir un peu plus sur MyMajorCompany</h2>
                <p>
                    Nous sommes une équipe d'une quinzaine de salariés basée à Paris. 
                    <a href="/about/team">Découvrez les membres de l’équipe ici</a> !
                </p>
                <p>
                    Depuis notre lancement, les projets présents sur notre site ont réuni plus de 13 millions d'euros de participation auprès de 70.000 internautes ce qui est un record en Europe. MyMajorCompany compte aujourd’hui plus de 340.000 membres dont 200 000 abonnés à sa newsletter qui relaie régulièrement les meilleurs projets du site.
                </p>
                <p> Découvrez MyEggplantCompany en vidéo !</p>
                <iframe width="100%" height="411" src="//www.youtube.com/embed/WiTLRS6wAgs" frameborder="0" allowfullscreen="">
                </iframe>
                <h2 class="titre">J'ai une question, qui contacter ?</h2>
                <p>
                    Ca dépend de la question ! 
                    <br>
                    Nous avons conçu le « Comment ça marche ? » pour qu’il réponde à un maximum de vos interrogations donc vérifiez bien que votre réponse ne s’y trouve pas déjà en utilisant le menu à droite de l’écran.
                </p>
                <p>
                    Si vous n’y trouvez pas votre réponse, posez-nous votre question directement sur notre 
                    <a href="/contact">interface de contact</a>.
                </p>
                <h2 class="titre">Le crowdfunding est-il encadré par une législation ? </h2>
                <p>
                    Oui, le crowfunding est désormais régi par <a href="http://www.legifrance.gouv.fr/affichTexte.do?cidTexte=JORFTEXT000029008408" target="_blank">l’ordonnance n°2014-559 du 30 mai 2014 relative au financement participatif</a>. Le 30 septembre 2014, l’AMF et l’ACPR ont également publié un <a href=" http://www.amf-france.org/Publications/Guides/Professionnels.html?xtor=RSS-7&amp;docId=workspace%3A%2F%2FSpacesStore%2Fa784a82d-295c-4371-8d04-f9b51895d370" target="_blank">guide d'information publié par l’AMF et l’ACPR</a>. Nous vous encourageons à les consulter !
                </p>
            </div>
            <div id="porteurs" class="tab-pane fade">
<h2 class="titre">Qui peut créer un projet ?</h2>
<p>
    Tout le monde. Que vous soyez un particulier, une association, une entreprise, un producteur, un entrepreneur… Peu importe. Quelque soit votre nationalité, votre pays de résidence, votre parcours ou votre profession, si votre idée est bonne et que vous croyez en la réussite de votre projet, lancez-vous !
</p>
<p>
    La seule condition reste l’âge… Il faut avoir plus de 18 ans pour pouvoir proposer son projet.
</p>
<h2 class="titre">Combien ça coûte ?</h2>
<p>
    La création de projet sur MyMajorCompany est entièrement gratuite. La commission de MyMajorCompany ne s’applique qu’en cas de succès de votre projet et correspond à 10% TTC de la somme que vous aurez récoltée à la fin de votre période de collecte. Autrement dit, si vous réussissez votre collecte, vous ne toucherez « que » 90% de celle-ci. C’est une notion qu’il faut avoir en tête quand vous calibrerez votre collecte. Mais chaque chose en son temps. Nous aurons l’occasion d’en reparler plus loin…
</p>
<h2 class="titre">Tous les projets sont-ils acceptés ?</h2>
<p>
    Hé non ! Il faut d’abord passer le filtre de nos terribles chefs de projets qui étudient toutes vos propositions dans le détail et n’acceptent que ceux qui répondent à nos critères de sélection. Cependant si votre projet leur plaît ils deviendront rapidement vos meilleurs amis ? Ils vous guideront pour que votre page soit la plus claire possible et que votre collecte ait un maximum de chance de réussir. N’oubliez pas que MyMajorCompany ne gagne QUE si vous gagnez ! C’est pourquoi il est important pour nous de connaître chacun d’entre vous et d’accompagner vos projets jusqu’au bout de leur période de collecte. Il est donc également possible que vous receviez de nos nouvelles en cours de route !
</p>
<h2 class="titre">Quels sont les critères de sélection d’un projet sur MyMajorCompany ?</h2>
<p>
    Difficile d’établir des critères stricts qui deviendraient rapidement limitatifs. Le financement participatif se crée chaque jour au gré de vos idées. Cependant deux règles de base sont à respecter :
</p>
<ul>
    <li>Il faut que votre projet ait du sens à s’appuyer sur du financement participatif. MyMajorCompany n’a pas vocation à devenir un outil de collecte pour des projets personnels qui ne présentent aucun caractère innovant, original ou vertueux, ni aucune portée collective particulière du genre « payez mon mariage » ou « achetez-moi une voiture »…</li>
    <li>Nos équipes doivent croire en la capacité de réussite de votre collecte. Et votre investissement personnel dans la construction du projet est un élément clé de cette réussite. Vous avez préparé une vidéo de présentation ? Vous demandez un montant réaliste et clairement justifié ? Votre projet est décrit dans les moindres détails ? Votre page est travaillée ? Vos contreparties sont originales et bien calibrées ? Votre projet aura toutes les chances d’être accepté. Pour mieux comprendre comment bien construire votre projet, rendez-vous au : <a href="http://www.mymajorcompany.com/about/projects#chap-bienconstruire">Bien construire son projet</a></li>
</ul>
<h2 class="titre">Une fois mon projet envoyé, sous quels délais recevrai-je ma réponse ?</h2>
<p>
    Notre équipe de chef de projet s’engage à vous répondre sous 3 jours ouvrés. Et oui « ouvrés » puisque nous ne travaillons malheureusement pas le week-end, ni les jours fériés, au grand désarroi de Maurice Taylor Jr notamment (nous aimons beaucoup rebondir sur l’actualité) ...
</p>
<p>
    Dans la première réponse que vous formuleront nos chefs de projet, vous trouverez des conseils et d’éventuelles modifications nécessaires au succès de votre collecte. Il est donc possible qu’il y ait plusieurs « aller-retours » avant la mise en ligne de votre projet. Juste le temps qu’il devienne vraiment parfait !
</p>
<h2 class="titre">Est-ce que je conserve la propriété intellectuelle de mon projet ?</h2>
<p>
    Absolument. Votre projet vous appartient à 100%. Ni MMC, ni les internautes ne détiendront de droit dessus, que votre collecte soit un succès ou non.
</p>
<h2 class="titre" id="chap-annulermonprojet">Pourrais-je annuler mon projet en cours ?</h2>
<p>
    Au moment où vous mettez votre projet en ligne, vous définissez une période de collecte. Vous vous engagez donc auprès de MyMajorCompany et des internautes à laisser votre projet en ligne pendant toute la durée de cette période.
</p>
<p>
    Vu que nous n’avons pas vraiment envie de séquestrer des porteurs de projet ou de demander aux internautes de soutenir un projet qui n’est peut-être plus d’actualité, MyMajorCompany fait des exceptions... Mais comme on dit poliment dans le milieu de la musique : on n’est pas fan quoi... En cas de force majeure, vous pouvez donc nous contacter ici pour nous expliquer votre situation. A la fin, nous trouvons toujours une solution constructive.
</p>
<h2 class="titre" id="chap-bienconstruire">Bien construire son projet</h2>
<p>
    Si nous devions vous donner quelques conseils ce serait :
</p>
<ul>
    <li>Soyez convaincant ! La description de votre projet doit être claire et structurée à l’aide de titres. Ajoutez-y des éléments concrets : photos, vidéos ou mp3. Expliquez bien à vos contributeurs à quoi serviront les sommes récoltées.</li>
    <li>Définissez un objectif de collecte cohérent et raisonnable, en fonction de vos besoins mais aussi de votre capacité à toucher un public plus ou moins grand.</li>
    <li>Réfléchissez à vos contreparties. C’est ce qui va donner envie aux amis de vos amis de rejoindre votre projet. Demandez-vous bien ce qui pourrait intéresser votre public cible.</li>
    <li>Pensez à vos cercles ! Les premiers intéressés par votre projet sont ceux qui vous connaissent déjà. Plus ils sont nombreux et plus votre projet a des chances de décoller rapidement et donc de devenir crédible aux yeux de ceux qui ne vous connaissent pas encore. N’oubliez pas d’ajouter des liens vers vos pages Facebook, Twitter, vos articles de presse, etc. Montrez à vos contributeurs potentiels que votre projet a déjà sa petite notoriété.</li>
</ul>
<h2 id="chap-toutourien" class="titre">Le principe du « tout ou rien » c’est quoi ?</h2>
<p>
    Si l’objectif que vous vous êtes fixé n’est pas atteint, vos contributeurs sont remboursés et vous ne récupérez aucune contribution. Il est donc très important de bien penser ses objectifs et ne pas viser trop haut. En configurant votre jauge, vous devez vous demander quelle est la somme minimale avec laquelle vous pourriez amorcer votre projet, tout en gardant à l’esprit que cette somme peut être dépassée.
</p>
<h2 class="titre">Comment fixer mon objectif de collecte ? Y a-t-il un montant maximum ?</h2>
<p>
    Non il n’y a pas de montant maximum ! Théoriquement vous pouvez donc combler le trou de la sécu ou rembourser la dette grecque sur MyMajorCompany ! Petit bémol tout de même, nos graphistes nous signifient qu’au-delà de 100 milliards on risque d’avoir des problèmes d’affichage donc désolés pour les plus ambitieux d’entre vous… Pour fixer votre objectif de collecte intelligemment, listez vos postes de dépenses vitaux et chiffrez-les. Allez à l’essentiel pour que votre objectif puisse être atteint plus facilement. 
    <br>
    Vous pouvez assez facilement vous faire une idée de la somme que pourrait réunir votre projet en pensant à vos 3 cercles.
</p>
<p>
    Votre 
    <strong>premier cercle</strong> se compose de votre communauté : vos amis, votre famille, vos collaborateurs, vos fans, vos enfants s’ils ont de l’argent de poche ou madame Bettencourt si vous avez son adresse. Si vous arrivez les embarquer dans votre aventure en menant une campagne de promotion active, vous avez toutes les chances de convaincre un <strong>deuxième cercle</strong> : les amis de vos amis ! Puis il y a « l’effet boule de neige » : un projet qui grimpe attire la curiosité de ceux qui ne vous connaissent pas encore, c’est votre <strong>troisième cercle</strong>.
</p>
<p>
    Notez que, dans la plupart des cas, un projet qui remplit 50% de sa collecte grâce à ses premiers cercles a plus de 80% de chance de voir son projet financé ! En revanche, un projet qui ne réunit que 10% de son objectif après avoir assuré une campagne active n’a que 20% de chance de mener à bien sa collecte. 
    <br>
    Il faut donc bien mesurer la taille et la capacité de son premier cercle et définir un objectif de collecte en fonction. Attention : une fois que votre projet sera en ligne, vous ne pourrez plus modifier votre objectif de collecte.
</p>
<p>
    Pour information, la moyenne des collectes de financement participatif réussies en France ont un objectif d’environ 3500€. En chiffrant votre objectif, n’oubliez pas les frais que pourraient engendrer la livraison de vos contrepartie et la commission MMC qui ne sera prélevé que si cet objectif est atteint (10%TTC du montant collecté). 
    <br>
    Un objectif de collecte cohérent c’est aussi un objectif qui vous permettra de délivrer aisément les contreparties promises.
</p>
<h2 class="titre">Comment fixer ma période de collecte ? Quelle est la durée maximum autorisée ?</h2>
<p>
    Après avoir fixé votre objectif de collecte vous devez définir sa durée. C’est ce qu’on appelle « la période de collecte ».&nbsp;</p>
<p>
    Il y a deux façons de fixer sa période de collecte :
</p>
<ul>
    <li>Soit votre projet a une date butoir et dans ce cas vous connaissez la date de fin de votre période de collecte</li>
    <li>Soit votre projet n’a pas vraiment de contrainte de temps et c’est à vous de définir le nombre de jours qui vous semble nécessaire pour atteindre votre objectif. Bon à savoir : Les collectes les plus longues ne sont pas forcément les plus réussies, toutes les femmes vous le diront (pardon j’ai mélangé deux sujets). La plupart du temps, les projets démarrent sur les chapeaux de roues (mobilisation des 1er et 2ème cercles) puis stagnent, pour rebondir en fin de période de collecte (phénomène « Je contribuerai au projet plus tard, s'il a vraiment besoin de moi »). Si votre période de collecte est longue, cela peut être très décourageant pour tout le monde. Fixez donc une période raisonnable pour que votre projet soit financé tout en restant dans une bonne dynamique. De plus, le sentiment d’urgence pourrait stimuler vos contacts ! Attention : une fois que votre projet est en ligne, vous ne pouvez plus modifier la durée de votre collecte <a href="/about/projects#chap-annulermonprojet">(cf. "Pourrais-je annuler mon projet en cours ?")</a></li>
</ul>
<h2 class="titre">Quand commence la période de collecte ?</h2>
<p>
    La période de collecte commencera dès que votre projet sera en ligne sur MyMajorCompany.com
</p>
<p>
    Nous ne pouvons pas savoir combien de temps s’écoulera entre le moment où vous créerez votre projet et celui où il sera effectivement en ligne. En effet, durant cette période aura lieu une phase d’échange entre un chef de projet MyMajorCompany et vous, lors de laquelle vous serez guidé dans l’amélioration de votre page. Au terme de cette période, il ne vous restera plus qu’à cliquer sur « Valider mon projet ».
</p>
<h2 class="titre">Comment bien fixer ma période de collecte si je ne sais pas quand MMC validera le projet ?</h2>
<p>
    Si vous avez configuré votre période de collecte en nombre de jours, alors vous pourrez simplement ré indiquer le bon nombre de jours avant de valider votre projet. Si votre projet a une date butoir qui ne peut pas être déplacée alors les jours écoulés ne peuvent effectivement pas être rattrapés. C’est le genre de thématique qui pourrait donner lieu à de jolies chansons d’ailleurs… Bien sûr si cette date peut être ajustée, il vous suffit de retarder un peu votre date de fin de collecte.
</p>
<h2 class="titre">Si mon projet a atteint son objectif avant la fin de la période de collecte, que se passe-t-il ?</h2>
<p>
    Même si votre objectif est atteint, votre collecte n’est pas forcément terminée ! Votre projet reste en ligne jusqu’à la fin de la période de collecte que vous avez définie. Vous avez atteint votre besoin de financement initial, super ! Profitez-en pour vous fixer de nouveaux objectifs !
</p>
<p>
    Ajoutez un paragraphe à la description de votre projet et expliquez à vos contributeurs à quoi serviront les fonds supplémentaires. 
    <br>
    Bien sûr si votre projet n’a aucun sens à dépasser le montant initial de votre collecte ou si vous ne souhaitez absolument pas de soutien supplémentaire, 
    <a href="http://www.mymajorcompany.com/contact">contactez-nous ici</a> pour nous expliquer votre situation et nous trouverons des solutions qui vous conviennent.
</p>
<h2 class="titre">Si ma période de collecte est terminée et mon objectif de collecte n’a pas été atteint, que se passe-t-il ?</h2>
<p>
    Si votre projet n’a pas atteint son objectif à la fin de votre période de collecte, les internautes sont remboursés et rien ne se passe (cf. 
    <a href="/about/projects#chap-toutourien">« Principe du tout ou rien »</a>). Vous ne percevez pas les sommes récoltés, vous n’avez donc pas de contrepartie à délivrer et pas de commission à verser à MyMajorCompany.
</p>
<h2 class="titre">Comment choisir mes contreparties ?</h2>
<p>
    Le meilleur conseil que nous puissions vous donner c’est de vous balader sur le site et de vous inspirer des idées des autres (celles qui marchent tant qu’à faire). Ayez en tête que les contreparties servent à remercier les internautes pour leur soutien. Il y aurait beaucoup de chose à dire sur la bonne manière de construire ces contreparties.
</p>
<p>
    Mais s’il fallait vous donner quelques grands axes de réflexion :
</p>
<ul>
    <li>sachez que vous pouvez limiter une contrepartie en termes de quantité disponible pour les internautes. Par exemple si vous n’avez que 20 invitations disponibles pour votre showcase, vous pouvez limiter la contrepartie « invitation pour mon showcase » à 20 contributeurs.</li>
    <li>pour offrir des contreparties à des prix attractifs, faites simple et efficace ! Quand cela est possible, proposez des contreparties digitales qui vous évitent les envois postaux. N’oubliez pas d’offrir de l’expérience, de la symbolique, de l’inédit ! Cela ne vous coûtera que du temps et de l’attention.</li>
    <li>anticipez le coût, la gestion et la livraison de vos contreparties avant de les proposer. Votre projet consiste à réaliser votre websérie, vous avez besoin de 10.000 euros pour la produire, vous souhaitez proposer à vos internautes l’envoi du dvd dédicacé de la websérie chez eux pour un soutien de 10 euros. Très bien. Mais la fabrication du DVD en question coute 1,50 euros pièce, l’envoi par la poste 1 euro et sur les 10 euros collectés, 1 euro ira à la commission MyMajorCompany. Finalement sur 10 euros de soutien pour la création de votre websérie, seuls 6,50 euros sont réellement disponibles pour la production de celle-ci ! C’est le genre de calcul qu’il faut avoir en tête avant de fixer la valeur d’une contrepartie</li>
    <li>promettez uniquement des contreparties que vous êtes sûrs de pouvoir offrir !</li>
    <li>n’oubliez pas que certaines de vos contreparties peuvent être soumises à la TVA.</li>
    <li>enfin si les contreparties servent à remercier les internautes pour leur soutien, elles permettent aussi d’élever le panier moyen de ceux-ci de quelques euros. Si vous pensez que la grande majorité de vos soutiens voudra vous aider à hauteur de 10 euros, c’est en créant une très bonne contrepartie à 20 euros que vous serez le plus efficace ! Sachez que le panier moyen sur MyMajorCompany est de 50€ mais l’immense majorité des internautes donne de petits montants.
Pour vous aider dans la gestion et l’envoie de vos contreparties, nous mettons à votre disposition un fichier téléchargeable directement sur la page de votre projet. Dans celui-ci, vous retrouverez toutes les informations dont vous aurez besoin dans cette étape.
    </li>
</ul>
<h2 class="titre">Je n’arrive pas ajouter un fichier à ma page. Comment faire ?</h2>
<p>
                        Si un message d’erreur apparait au moment où vous ajoutez un fichier à la page de votre projet, cela signifie que le format de votre fichier n’est pas compatible avec notre site. Ce message vous rappelle les formats de fichier autorisés sur le site MyMajorCompany.
</p>
<p>
                        Par exemple, si vous souhaitez ajouter une image à votre page projet, assurez-vous que celle-ci est enregistré sur votre ordinateur au format "jpg", "gif" ou "png". Si ce n’est pas le cas, vous devez la convertir en l’un de ces formats sur votre ordinateur, puis réessayer.
</p>
<h2 class="titre">Puis-je proposer de la réduction fiscale sur mon projet ?</h2>
<p>
                        Vous pouvez proposer de la réduction fiscale sur votre projet si vous représentez un établissement habilité à émettre des reçus fiscaux. 
    <br>
                        Si c’est le cas, contactez directement le chef de projet qui vous est assigné à la création de votre projet. Il se chargera de vous guider et d’ajouter la mention à votre projet après les vérifications d’usages.
</p>
<h2 id="chap-reussir">Réussir sa collecte</h2>
<h2 class="titre">Pourquoi mon projet n’est-il pas immédiatement référencé sur le site ?</h2>
<p>
                        Lorsque votre projet est mis en ligne sur MyMajorCompany, il n’est pas visible tout de suite sur la page « découvrir les projets ». Il faut d’abord qu’il ait convaincu 5 contributeurs et collecté au moins 100 euros avant d’y être référencé. En attendant, il est tout de même accessible via le lien direct de la page (l’URL) et le moteur de recherche, ce qui vous permet d’en faire la promotion sur tous vos réseaux.
</p>
<p>
                        Pourquoi MyMajorCompany a-t’il mis en place cette étape ? Parce que nous savons qu’un porteur de projet qui n’est pas impliqué dans sa collecte n’a aucune chance de la voir aboutir. Convaincre 5 proches de l’intérêt de sa démarche nous semble un minimum à atteindre pour espérer toucher par la suite des milliers d’internautes. Rassurez-vous, nous mettons à votre disposition de nombreux outils de partage pour solliciter ces premiers contributeurs.
</p>
<h2 class="titre">Comment promouvoir mon projet ?</h2>
<p>
                        Votre campagne est lancée ! Vous devez maintenant en faire la promotion et solliciter votre public. Le démarrage de votre projet est très important alors ne perdez pas de temps !
</p>
<p>
                        Voici une liste non exhaustive des actions de communication à mener. C’est une base, n’hésitez pas à vous creuser la tête pour avoir des idées de campagne cohérente avec la nature de votre projet !
</p>
<ul>
    <li>Envoyez un mail à tous vos contacts : Amis, familles, collègues, etc. Vous pouvez le faire en quelques clics seulement en utilisant notre outil de partage ! Informez-les de cette nouvelle aventure qui démarre pour vous. Visez large, même si certains ne rejoignent pas le projet, ils seront de toute façon ravis pour vous. Invitez-les à s’inscrire sur le site via le facebook connect. Ainsi leur soutien sera automatiquement publié sur leur wall facebook et tous leurs contacts sauront que votre projet existe ! C’est avec les petits ruisseaux…</li>
    <li>Postez votre page sur vos réseaux sociaux si vous en avez ! N’hésitez pas à le faire régulièrement pour relancer vos fans et étendre le bouche à oreille.</li>
    <li>Vous pouvez également exporter la vignette de votre projet sur votre blog, site internet ou sites partenaires en cliquant sur « Exporter » sur la page de votre projet. Ainsi, les internautes pourront participer au projet directement depuis vos sites externes !</li>
    <li>Sollicitez les habitants de votre région ! Ils peuvent être sensibles à votre idée et à votre histoire. Pensez à contacter les médias locaux, à faire imprimer des affiches ou des flyers à déposer chez les commerçants de votre quartier. </li>
    <li>Créez un lien avec vos premiers contributeurs, remerciez-les et tenez les informés de l’avancée de votre projet en postant un message privé dans votre onglet News ou via la messagerie interne.</li>
</ul>
<br>
<p>
     Retrouvez également en vidéo tous les bons conseils des créateurs du projet Wistiki qui a collecté sur notre site plus de 80000 euros !
</p>
<iframe width="100%" height="411" src="//www.youtube.com/embed/pdVUYzjrm5Q" frameborder="0" allowfullscreen="">
</iframe>
<h2 class="titre">MyMajorCompany peut-il m’aider à promouvoir mon projet ?</h2>
<p>
                        Oui, nous mettons régulièrement des projets en avant sur notre page d’accueil, nos newsletters envoyées à plus de 200 000 abonnés, nos réseaux sociaux et notre blog… Nous les choisissons essentiellement en fonction de leur dynamique et de leur capacité à réunir des contributeurs.
</p>
<p>
                        Si un projet plaît et qu’il a déjà réuni 50% de son objectif de collecte, il est fort probable que nous le mettions en avant. En général, un membre de notre équipe contacte le porteur au préalable pour le prévenir afin qu’il puisse gérer sa campagne en conséquence.
</p>
<p>
                        De plus, chez MyMajorCompany, 
    <a href="http://www.mymajorcompany.com/team#presse">une équipe d’attachés de presse</a> travaille en interne pour faire la promotion des projets et de la plateforme. Ils soutiennent les projets présentant un potentiel médiatique ce qui ne s’applique pas forcément aux projets portés par des têtes connues d’ailleurs !
</p>
<p>
                        Dès qu’un article paraît sur un projet MyMajorCompany, nous en parlons sur nos réseaux sociaux !
</p>
<h2 class="titre">Comment bien utiliser les outils mis à ma disposition</h2>
<ul>
    <li>La messagerie : La messagerie vous permet de communiquer avec chacun de vos contributeurs individuellement. Vous pouvez sélectionner les contributeurs avec lesquels vous souhaitez partager votre message en fonction de la contrepartie choisie, du montant de leur mise, de leur lieu de résidence ou de leur âge ! Vos contributeurs peuvent aussi passer par la messagerie pour vous poser leurs questions. N’oubliez pas d’y répondre régulièrement.</li>
    <li>L’onglet News : Mettez votre page à jour et tenez vos contributeurs informés en postant des articles dans l’onglet « News » de votre page. Ces « News » peuvent être soit publiques, soit privées et donc visibles uniquement par vos contributeurs. Dans ce cas les internautes qui n’ont pas encore misé sur votre projet voient apparaitre le message suivant : "Accès réservé aux contributeurs". Utilisez cet outil pour donner envie aux internautes de rejoindre votre projet !</li>
</ul>
<ul>
    <li>Les outils de partage : faites parler de votre projet et menez votre campagne directement depuis votre page projet MyMajorCompany en utilisant nos outils de partage Facebook, Twitter, Google+, ainsi que le bouton « Exporter » qui vous permet de faire apparaître la vignette de votre projet sur vos sites et blogs.</li>
    <li>L’aide à la livraison des contreparties : une fois votre projet financé, nous vous assisterons dans la gestion et la livraison de vos contreparties en mettant à votre disposition un fichier téléchargeable mentionnant toutes les informations dont vous aurez besoin dans cette étape.</li>
</ul>
<h2 id="chap-projetfinancé">Mon projet a été financé ! Réussir son SAV !</h2>
<h2 class="titre">Comment puis-je récupérer mon argent ?</h2>

<p>
Une fois la date de fin de collecte atteinte, l’argent de la jauge vous sera reversé sur votre 
    <strong>Crédit MMC</strong> dans un délai de 14 jours <a href="https://www.mymajorcompany.com/terms">(Cf. CGU – 12. Droit de rétraction)</a>. Vous devrez ensuite certifier votre compte MMC pour demander un <strong>virement bancaire</strong>. Pour ce faire, nous vous invitons à vous rendre dans votre espace « Mon compte », à la rubrique « Paramètres du compte » et dans l’onglet « Certification ». Il vous sera alors demandé d’envoyer une copie d’un document justifiant votre identité (Carte d’Identité Nationale, Passeport, Permis de conduire). Il est indispensable que les coordonnées de vos Paramètres soient celles de la personne, association ou entreprise qui recevra l’argent sur son compte !
</p>
<p>
Vous pouvez envoyer un ou plusieurs fichiers. Le poids d’un fichier ne doit pas dépasser 10 mo (formats acceptés : PDF, DOC, PNG, JPG).
</p>
<p>
ATTENTION : pour que vos documents soient acceptés, ils doivent être lisibles et doivent permettre de vous identifier clairement.
</p>
<h2 class="titre">Quelles sont les informations dont je dispose pour contacter mes contributeurs ?</h2>
<p>
Pendant votre période de collecte, tant que votre projet n’est pas encore financé, vous pouvez contacter personnellement vos contributeurs grâce à votre messagerie interne uniquement. MyMajorCompany ne vous livre pas encore leurs adresses car ils peuvent décider d’annuler leur participation.
</p>
<p>
Une fois votre projet financé à 100%, vous avez accès à leurs noms, leurs adresses, et toutes les informations nécessaires à la distribution de vos contreparties . Nous ne pouvons pas vous transmettre leurs mails, mais c’est à ça que sert la messagerie interne ! Tous ces éléments sont listés dans un « fichier contributeurs » qu’MMC a conçu spécialement pour vous et qui vous aidera dans tous le process de livraison de vos contreparties et de gestion de votre communauté.
</p>
<h2 class="titre">Quels outils MMC met-elle à ma disposition pour m’aider à délivrer mes contreparties ?</h2>
<p>
    Vous êtes entièrement responsable de la livraison de ces contreparties. Vos contributeurs vous ont aidé à réaliser votre projet, ils attendent en échange des nouvelles de votre projet ainsi que la contrepartie qu’ils ont choisie. Ces contributeurs sont vos premiers fans, vos clients potentiels, les prescripteurs de votre marque, vos bienfaiteurs en somme ! Mais ils sont aussi des utilisateurs MyMajorCompany. Les rendre heureux fait donc partie de nos intérêts communs.
</p>
<p>
    C’est pourquoi nous faisons le nécessaire pour vous aider à les satisfaire et nous avons mis à votre disposition des outils qui vont vous faire gagner beaucoup de temps dans cette étape :
</p>
<ul>
    <li>Une messagerie via laquelle vous allez pouvoir filtrer vos contributeurs selon la contrepartie qu’ils ont choisie.</li>
    <li>Des formulaires pour obtenir facilement des informations complémentaires sur vos contributeurs (par exemple leur taille de T-shirt, leur pointure de chaussure, leur date de disponibilité pour un événement, le nom d’un accompagnateur etc.)</li>
    <li>Un fichier téléchargeable référençant toutes les informations dont vous aurez besoin pour livrer vos contreparties.</li>
</ul>
<h2 id="chap-questionsjuridiques">Questions juridiques et fiscales</h2>
<h2 class="titre">Dois-je déclarer les fonds collectés sur MyMajorCompany ? Si oui, comment ?</h2>
<h4><em>Je suis un particulier ou un auto-entrepreneur</em></h4>
<p>
                            Si vous êtes un particulier dont le domicile fiscal est en France, vous êtes imposable sur l’intégralité de vos revenus. Vous devez donc déclarer les fonds récoltés sur MyMajorCompany.
</p>
<p>
                            En fonction du type de contreparties proposées, les fonds collectés sur MyMajorCompany correspondent à différentes catégories de revenus : BIC ou BNC.
</p>
<p>
                            Si vous vendez habituellement les contreparties remises aux contributeurs par d’autres canaux : les fonds collectés sur MyMajorCompany sont considérés comme une vente de biens ou de prestations de services.
</p>
<p>
                            Ces fonds sont imposables dans la catégorie des BIC (Bénéfices Industriels et Commerciaux) et donc à intégrer à votre déclaration d’impôts sur le revenu dans le feuillet n°2031 (BIC : Bénéfices industriels et commerciaux).
</p>
<p>
                            Les exploitants individuels qui bénéficient d’une franchise de TVA et qui perçoivent des recettes dans une limite donnée peuvent bénéficier du régime « micro BIC » simplifiant leurs obligations comptables.&nbsp;
</p>
<p>
                            Si les contreparties remises aux contributeurs ne font pas l’objet d’un acte de commerce habituel, les revenus générés sur MyMajorCompany sont considérés comme annexes.
</p>
<p>
                            Les fonds sont imposables dans la catégorie des BNC (Bénéfices Non Commerciaux) et considérés comme des revenus d’activité, à inscrire dans les cases 1AJ à 1DJ de votre déclaration de revenus (formulaire n°2042).
</p>
<p>
                            Les exploitants individuels qui bénéficient d’une franchise de TVA et qui perçoivent des recettes dans une limite donnée peuvent bénéficier du régime « micro BNC » simplifiant leurs obligations comptables.&nbsp;
</p>
<h4><em>Je suis une société</em></h4>
<p>
                            Si vous êtes une société soumise à l’IR et à l’IS, les fonds collectés sur MyMajorCompany doivent être inclus dans la constitution du bénéfice imposable de l’entreprise, à intégrer au résultat fiscal du formulaire n°2065 lors de l’établissement de votre liasse fiscale.
</p>
<p>
                            Vous devez analyser au cas par cas si les revenus générés via MyMajorCompany sont à considérer comme des revenus d’exploitation correspondant à l’activité courante et normale de l’entreprise – à imputer en compte de classe 75 « Autres produits de gestion courante » ou bien des revenus exceptionnels - à imputer en compte de classe 77 « Produits exceptionnels ».
</p>
<p>
                            Les charges exposées pour la réalisation du projet sont susceptibles d’être déductibles au même titre que vos autres charges d’exploitation.
</p>
<h4><em>Je suis une association</em></h4>
<p>
                            Si vous êtes une association reconnue d'intérêt général qui réalise des prestations commerciales lucratives à titre accessoire, vous êtes exonéré des impôts commerciaux.
</p>
<h2 class="titre">Dois-je payer de la TVA sur les fonds collectés sur MyMajorCompany ?</h2>
<h4><em>Je suis un particulier ou un auto-entrepreneur</em></h4>
<p>
                            Si vous exercez sur MyMajorCompany une prestation commerciale à titre accessoire, vous pouvez généralement bénéficier du régime de franchise en base de TVA. Dans ce cas, vous n’avez donc pas à payer de TVA. 
    <a href="http://vosdroits.service-public.fr/professionnels-entreprises/F23267.xhtml#N101E1" target="_blank">Plus d’informations sur le régime de franchise en base de TVA.</a>
</p>
<h4><em>Je suis une société</em></h4>
<p>
                            Si vous êtes assujetti à la TVA dans le cadre de votre activité, vous réalisez alors sur MyMajorCompany une vente soumise à la TVA lorsque vous délivrez vos contreparties. La TVA ainsi collectée devra être reversée à l’Etat, elle est donc à déduire des sommes collectées.
</p>
<p>
                            Si vous bénéficiez du régime de franchise en base de TVA, vous n’avez aucune déclaration à déposer. 
    <a href="http://vosdroits.service-public.fr/professionnels-entreprises/F23267.xhtml#N101E1" target="_blank">Plus d’informations sur le régime de franchise en base de TVA.</a>
</p>
<h4><em>Je suis une association</em></h4>
<p>
    Si vous êtes une association reconnue d'intérêt général qui réalise des prestations commerciales lucratives à titre accessoire, vous êtes exonéré des impôts commerciaux, et donc de la TVA.
</p>
<h2 class="titre">Puis-je proposer de la Réduction fiscale sur mon projet ?</h2>
<p>
    Seules les associations reconnues d’intérêt général, en possession d’un rescrit fiscal, peuvent proposer de la Réduction fiscale sur leur projet.
</p>
<p>
    Avant de proposer de la Réduction fiscale sur votre projet, vous devez envoyer la copie du décret portant reconnaissance d’utilité publique ou le rescrit fiscal valant attestation d’éligibilité à la réduction fiscale rendant au bénéfice de votre organisme/fondation/association au chef de projet qui vous sera assigné dès la création de votre projet.
</p>
<h2 class="titre">Je peux proposer de la Réduction fiscale sur mon projet. Comment construire mes contreparties ?</h2>
<p>
    Vous ne pouvez proposer de Réduction fiscale sur l’achat de vos contreparties qu’à certaines conditions :
</p>
<ul>
    <li>Les contreparties ne doivent pas avoir une valeur monétaire excédent 25% du montant du don</li>
    <li>Les contreparties ne peuvent excéder une valeur monétaire de 65 €</li>
</ul>
<p>
    Pour les contributions réalisées par des entreprises, seul le plafond d’une valeur de 25% du don est applicable.
</p>
                        <hr>
    <p class="clearfix">
            <a class="pull-left" href="/about">« Les fondamentaux</a>
                <a class="pull-right" href="/about/investor">Aide aux contributeurs »</a>
        </p>
                
            </div>
            <div id="contribs" class="tab-pane fade">
            
<h2 class="titre">Pourquoi soutenir un projet ?</h2>
<p>
Pour faire partie d’une aventure unique, pour participer à la naissance d’idées et de projets qui ont du sens pour vous, pour vivre de l’intérieur l’existence de ces projets et pour profiter de contreparties inédites !</p>
 
<p>Attention ! Nous vous rappelons que MyMajorCompany est une plateforme de financement participatif (ou crowdfunding) basée sur le modèle du don contre don qui se positionne dans une logique de soutien et non d’investissement : les internautes qui soutiennent financièrement des projets culturels, entrepreneuriaux, innovants etc. reçoivent en échange des contreparties symboliques et matérielles (accès privé aux coulisses d’un évènement, rencontre avec les artistes etc.) et non des contreparties qui proposent du retours financiers <a href="/about/investor#chap-projetsretourfinancier">(Cf. vous avez participé à un projet à retour financier ?)</a>.</p>
<h2 class="titre">Comment participer à un projet ?</h2>
<p>
    Pour soutenir un projet, rien de plus simple ! Rendez-vous sur la page du projet qui vous intéresse et cliquez sur le bouton « Je participe ». Vous pourrez ensuite décider d’un montant de participation en sélectionnant les contreparties dont vous souhaitez bénéficier ou choisir le système du « soutien sans contrepartie » en entrant le montant de votre choix (le montant de participation minimal est de 1 €). Si vous n’avez pas encore de compte MyMajorCompany,
    <a href="http://www.mymajorcompany.com/login">cliquez ici pour vous inscrire</a>.
</p>
<h2 class="titre">Qu’est-ce qu’une contrepartie ? Quand vais-je en bénéficier ?</h2>
<p>
                            MyMajorCompany fonctionne sur le principe du don contre contrepartie, c’est-à-dire que les porteurs de projet vous proposent des contreparties en échange de votre participation. Elles sont spécialement imaginées pour vous remercier de votre contribution et varient selon le montant investi.
</p>
<p>
                            Par exemple, un artiste qui souhaiterait faire financer son premier album de musique peut proposer pour 5€ des remerciements personnalisés, pour 15€ l’album dédicacé en avant-première, pour 40€ une place à un concert et pour les donateurs les plus généreux, un concert privé ou une journée en studio !
</p>
<p>
                            Certains projets offrent également des contreparties à 
    <a href="/about/investor#chap-projetsretourfinancier">retour financier</a> ou de la <a href="/about/investor#chap-projetsdeductionfiscale">réduction fiscale</a>.
</p>
<p>
                            Lorsque vous participez à un projet, votre contrepartie n’est acquise qu’à partir du moment où le projet atteint son objectif de collecte. En effet, s’il ne l’atteint pas votre participation vous est remboursée et vous ne recevez donc pas de contrepartie.
</p>
<h2 class="titre">Comment obtenir des nouvelles d’un projet ?</h2>
<p>
    Connectez-vous à votre compte et retrouvez grâce à votre messagerie, tous les messages envoyés par le porteur de projet afin de vous tenir informé de l’évolution du projet. Vous pouvez également vous rendre sur la page du projet que vous soutenez pour découvrir toutes ses actualités dans l’onglet « News ». Certaines vous sont spécialement réservées.
</p>
<p>
    Vous pouvez aussi contacter directement le porteur du projet en vous rendant sur son profil et en cliquant sur "envoyer un message" situé sous son avatar.
</p>
<h2 class="titre">Comment aider à la promotion d’un projet ?</h2>
<p>
    Si vous souhaitez donner un petit coup de pouce aux projets que vous soutenez, vous pouvez poster sa page projet sur vos réseaux sociaux (Facebook, Twitter, Google+), exporter la vignette de son projet sur votre blog ou site internet, et envoyer le projet par mail à vos contacts et tout ceci en quelques clics grâce aux outils de partage disponible en haut de toutes les pages projets :
</p>
<div>
    <div>
        <a href="http://www.mymajorcompany.com">
        <iframe name="f2541c8c8" allowtransparency="true" scrolling="no" title="fb:like Facebook Social Plugin" src="http://www.facebook.com/plugins/like.php?action=like&amp;app_id=162042136152&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FbLBBWlYJp_w.js%3Fversion%3D41%23cb%3Df2fafb52cc%26domain%3Dwww.mymajorcompany.com%26origin%3Dhttp%253A%252F%252Fwww.mymajorcompany.com%252Ffc86797f8%26relation%3Dparent.parent&amp;font=arial&amp;href=http%3A%2F%2Fwww.mymajorcompany.com%2F&amp;layout=button_count&amp;locale=en_US&amp;ref=.U81Aez4h62I.like&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=90" style="margin-bottom: 0px; position: absolute; border-style: none; visibility: visible; width: 79px; height: 20px;" frameborder="0" height="1000px" width="90px">
        </iframe>
        </a>
        <p>
Le bouche à oreille est le meilleur moyen pour qu’un projet rencontre le succès alors n’hésitez pas !
        </p>
        <h2 class="titre">Je n’ai pas reçu ma contrepartie. Que faire ? Qui est responsable ?</h2>
        <p>
            Le porteur de projet est le seul responsable du bon déroulement dans l’envoi des contreparties. Si vous rencontrez un problème quant à cet envoi, vous devez le contacter directement en lui envoyant un message grâce à la petite icône désignant une enveloppe en haut de la page du projet. Si vous n’avez pas de réponse ou que vous avez le sentiment que le porteur de projet ne met pas la bonne volonté suffisante, 
            <a href="http://www.mymajorcompany.com/contact">contactez-nous</a>, expliquez votre problème, nous vous aiderons dans votre démarche.
        </p>
        <h2 class="titre">Le projet auquel j’ai participé n’a pas atteint son objectif. Comment puis-je récupérer mon argent ?</h2>
        <p>
            Si un projet auquel vous avez participé n’a pas atteint son objectif de collecte, (les 100% de sa jauge) avant la fin de sa période de collecte, le montant de votre participation est automatiquement versé sur votre Crédit (
            <a href="http://www.mymajorcompany.com/account/credit">disponible dans votre compte</a>). Vous serez évidemment averti par email.
        </p>
        <p>
            Vous pourrez ensuite utiliser votre Crédit pour participer à d’autres projets ou, si vous le souhaitez, demander un virement bancaire de votre Crédit en vous rendant sur votre espace 
            <a href="http://www.mymajorcompany.com/account">Mon Compte</a>.
        </p>
        <h2 id="chap-compte">Gérer mon compte utilisateur</h2>
        <h2 class="titre">J’ai oublié mon mot de passe. Comment le récupérer ?</h2>
        <p>
            Il suffit simplement de cliquer sur 
            <a href="http://www.mymajorcompany.com/resetting/request">« mot de passe oublié ? »</a> et de saisir l’adresse email de votre compte MyMajorCompany. Un email vous sera alors envoyé contenant votre nouveau mot de passe.
        </p>
        <p>
            Vous pourrez le changer si vous le souhaitez en vous rendant sur 
            <a href="http://www.mymajorcompany.com/account">votre espace Mon Compte</a>.
        </p>
        <h2 class="titre">J’ai changé d’adresse email. Comment me connecter au site ?</h2>
        <p>
            Vous devez utiliser votre précédente adresse email pour vous connecter. Vous pourrez alors mettre à jour cette adresse en vous rendant sur votre espace personnel.
        </p>
        <p>
            Si vous utilisez Facebook pour vous connecter, votre compte sera automatiquement mis à jour.
        </p>
        <h2 class="titre">Comment utiliser mon compte Facebook pour me connecter au site ?</h2>
        <p>
            Si vous n’avez pas encore de compte sur MyMajorCompany, utilisez votre compte Facebook pour vous connecter. C’est plus rapide et plus simple ! Pour cela, cliquez sur le bouton « me connecter avec Facebook » au moment de votre inscription.
        </p>
        <p>
            Si vous possédez déjà un compte MyMajorCompany, et que l’adresse email que vous avez renseignée est la même que celle de votre compte Facebook, la liaison sera automatiquement effectuée quand vous cliquerez sur le bouton « me connecter avec Facebook ».
        </p>
        <h2 class="titre">Comment me désinscrire du site ?</h2>
        <p>
                                    Il suffit tout simplement de vous rendre dans votre espace personnel « Mon compte » et de cliquer sur « Supprimer mon compte ». Attention, si vous avez des participations actives sur des projets nous ne pouvons pas supprimer votre compte comme ça. Il faut que vous 
            <a href="http://www.mymajorcompany.com/aide">contactiez le Service Utilisateurs</a> qui vous aiguillera dans votre démarche.
        </p>
        <h2 id="chap-transactions">Mes transactions</h2>
        <h2 class="titre">Quels sont les moyens de paiement dont je dispose ?</h2>
        <p>
                                    Il y a trois moyens de paiement possible sur MyMajorCompany :
        </p>
        <ul>
            <li>En utilisant votre carte de crédit (Carte Bleue, VISA, Mastercard, E-card)</li>
            <li>En vous servant du Crédit de votre compte, ce qui vous permet d’économiser les frais de gestion de votre commande.</li>
            <li>En saisissant un code promo qui vous a été délivré durant une opération commerciale.</li>
        </ul>
        <h2 class="titre">Mon paiement est-il sécurisé ?</h2>
        <p>
                                    Tout à fait. Notre processus de paiement en ligne est totalement sécurisé et opéré par un prestataire professionnel (MangoPay). Les données transmises lors de votre transaction sont chiffrées avec le cryptage SSL, et aucune information sensible n'est stockée sur les serveurs de MyMajorCompany.
        </p>
        <p>
            En cas d'enregistrement d'un moyen de paiement de votre compte (exemple : "j'enregistre ma carte bleue pour pouvoir effectuer un nouveau paiement sans saisir à nouveau mes informations"), seul le prestataire a accès aux informations sensibles du moyen de paiement.
Même en cas de piratage/vol de compte membre, ces informations ne seront jamais affichées directement sur le site et ne pourront être récupérées.
        </p>
        <h2 class="titre">Puis-je annuler une participation?</h2>
        <p>
                                    Bien sûr ! C’est l’un des grands principes du financement participatif.
        </p>
        <p>
                                    Pour annuler une participation à un projet, rendez-vous dans votre espace personnel rubrique 
            <a href="http://www.mymajorcompany.com/account/my-backed-projects">« mes participations »</a> et cliquez sur « annuler ma participation » disponible en dessous de chaque projet auquel vous avez participé. Le montant correspondant à votre participation sera alors versé à votre Crédit. Attention ! Une fois le projet financé à 100%, il n’est plus possible d’annuler une participation.
        </p>
        <h2 class="titre">Y’a-t-il des frais de transaction ?</h2>
        <p>
                                    Oui, ces frais sont ajoutés à votre panier à chaque processus d’achat par carte bancaire. Ils englobent les différents frais imputés par nos prestataires de paiement ainsi que ceux de fonctionnement (gestion de vos commandes, assistance aux utilisateurs, etc.). Ils représentent une part infime et dégressive du montant de votre soutien. Leur mode de calcul est clairement exposé à l’article 1 de nos conditions générales d’utilisation.
        </p>
        <h2 class="titre">Mes coordonnées bancaires ont changé. Quelles manipulations effectuer ?</h2>
        <p>
                                    Aucune car de toute façon MyMajorCompany ne garde jamais vos coordonnées bancaires en mémoire ! Elles vous sont demandées lors de chaque paiement par carte bancaire et lors de chaque demande de virement.
        </p>
        <h2 class="titre">Mon achat n’a pas été accepté. Que puis-je faire ?</h2>
        <p>
                                    Les achats que vous effectuez par carte bancaire sont gérés par votre banque. Si l’un de vos achats est refusé, nous vous recommandons d’attendre quelques minutes avant de recommencer, et de contacter votre banque si le problème persiste.
        </p>
        <h2 class="titre">Quand mon argent est-il débité de mon compte ?</h2>
        <p>
                                    Si vous avez réglé votre participation par carte bancaire, le prélèvement de votre compte prendra effet au bout de quelques heures. Vous serez débité du montant affiché sur le site au moment de votre paiement et vous recevrez un mail récapitulant votre commande.
        </p>
        <h2 class="titre">Comment utiliser un code promo ?</h2>
        <p>
                                    Nous organisons régulièrement des opérations promotionnelles sur 
            <a href="http://www.mymajorcompany.com">www.mymajorcompany.com</a> et
            <a href="http://facebook.com/mymajorcompany">sur notre page Facebook</a>. Lors de celles-ci l’un des lots pouvant être remportés sont des codes promotionnels dits « Code promo ». Ces codes vous permettent de contribuer à un projet et d’accéder à certains avantages ! Vous devrez juste le saisir au moment du paiement pour qu’il prenne effet.
        </p>
        <h2 class="titre">Je souhaite que mon Crédit soit viré sur mon compte bancaire. Comment faire?</h2>
        <p>
                                    Il vous suffit tout simplement d'effectuer une demande de virement. Pour ce faire, vous devez vous rendre dans la rubrique 
            <a href="http://www.mymajorcompany.com/account">« Mon compte »</a> et cliquer sur "Virement". Vous n’avez plus qu’à suivre les instructions.
        </p>
        <p>
                        Une fois votre demande de virement enregistrée, elle sera traitée sous 72 heures ouvrées maximum. Un email de confirmation vous sera alors envoyé. ATTENTION : dans certains cas, il vous sera demandé de certifier votre compte.
        </p>
        <h2 class="titre">Quand et comment dois-je faire pour certifier mon compte ?</h2>
        <p>
                        La certification de compte membre est obligatoire dans deux cas :
        </p>
        <ul>
            <li>effectuer des virements bancaires de votre compte membre MMC vers votre compte bancaire sans limitation de montant (fixée à 1000€ par année civile et par contributeur).</li>
            <li>participer financièrement à des projets sans limitation de montant (fixé à 2 500€ par année civile et par contributeur)</li>
        </ul>
        <p>
                        Pour certifier votre comte membre, nous vous invitons à vous rendre dans votre espace « Mon compte », à la rubrique « Paramètres du compte » et dans l’onglet « Certification ». Il vous sera alors demandé d’envoyer un une copie d’un document justifiant votre identité (Carte d’Identité Nationale, Passeport, Permis de conduire). Vous pouvez envoyer un ou plusieurs fichiers. Le poids d’un fichier ne doit pas dépasser 10 mo (formats acceptés : PDF, DOC, PNG, JPG).
        </p>
        <p>
                        Attention, pour que vos documents soient acceptés, ils doivent être lisibles et doivent permettre de vous identifier clairement.
        </p>
        <h2 class="titre">Le virement bancaire que j’ai demandé n’a pas été effectué à ce jour. Que faire ?</h2>
        <p>
                                    Le délai moyen de traitement d’une demande de virement est de 3 (trois) jours ouvrés. Nous vous envoyons un email dès que le virement est effectué. Si vous rencontrez un problème, 
            <a href="http://www.mymajorcompany.com/contact">contactez-nous ici</a>.
        </p>
        <h2 id="chap-projetsretourfinancier">Vous avez participé à un projet à retour financier ?</h2>
        <h2 class="titre">Qu’est-ce que le retour financier ?</h2>
        <p>
                                    Le retour financier est une des contreparties possibles sur MyMajorCompany. Les projets qui en proposent sont indiqués par un bandeau orange "Retour financier". Seuls des projets portés par MyMajorCompany ou ses partenaires peuvent en offrir afin que les contributeurs soient garantis du bon calcul et du bon versement de leurs droits. Attention ! Ne voyez pas le financement participatif comme un moyen de vous enrichir.
        </p>
        <h2 class="titre">Comment ça fonctionne ?</h2>
        <p>
                                    Sur MyMajorCompany, chaque porteur de projet fixe ses propres contreparties. Pour le retour financier, il est défini conjointement par le porteur de projet et par les équipes de MyMajorCompany. Chaque projet a alors ses propres conditions qui sont à chaque fois illustrées par un tableau ou un simulateur que vous pouvez retrouver directement sur la page du projet. Des Conditions Particulières de la Contrepartie Financière y sont évidemment associées et vous pouvez les consulter en cliquant sur le bandeau orange « Retour financier » situé sur chacune des contreparties de ce type de projet.
        </p>
        <h2 class="titre">Qui est responsable du développement du projet ?</h2>
        <p>
                        Comme sur tous les projets présents sur la plateforme, c'est le porteur de projet qui est responsable de la bonne réalisation du projet.
        </p>
        <p>
                        Les projets proposant du retour financier répondent cependant à deux critères supplémentaires qui vous apportent une certaine garantie sur le bon déroulement du projet après la collecte :
        </p>
        <ul>
            <li>Les porteurs de projet sont engagés contractuellement vis-à-vis de MyMajorCompany à assurer la communication avec ses contributeurs</li>
            <li>MyMajorCompany a vérifié en amont le sérieux et la capacité réelle des créateurs à mener à bien leur projet tel qu’ils le décrivent sur leur page projet.</li>
        </ul>
        <h2 class="titre">Comment puis-je être sûr qu'on me reverse bien les sommes que l'on me doit ?</h2>
        <p>
                        Sur ce point c’est très simple et très clair : c’est MyMajorCompany qui est responsable du bon versement de vos gains et qui se porte garant du bon calcul et du bon versement de vos droits. En cas de défaut de paiement de l’entreprise ou du producteur en question, MyMajorCompany s’engage à vous verser ce qui vous revient ! Si vous rencontrez un problème quant au versement qui vous est du vous pouvez nous écrire à l’adresse : service.utilisateurs@mymajorcompany.com.
        </p>
        <h2 id="chap-projetsdeductionfiscale">Les projets avec réduction fiscale</h2>
        <h2 class="titre">Comment ça marche concrètement ?</h2>
        <p>
                        Vous payez le montant total de la contrepartie et le porteur de projet vous enverra un reçu fiscal (formulaire Cerfa n° 11580*03) que vous devrez joindre à votre déclaration de revenus. Vous pourrez alors déduire votre don des impôts à hauteur de 66% dans la limite de 20% du revenu imposable du donateur pour un particulier et à hauteur de 60% dans la limite d’un plafond unique de 5 pour mille du chiffre d’affaires hors taxes pour une société.
        </p>
        <h2 class="titre">Qui est éligible ?</h2>
        <p>
                                                        Les organismes d’intérêt général, les fondations et les associations reconnues d’utilité publique.
        </p>
        <p>
                                                        Votre projet peut proposer de la réduction fiscale ? 
            <a href="http://www.mymajorcompany.com/contact">Contactez-nous ici</a>
        </p>
        <h2 id="chap-juridique">Questions juridiques et fiscales</h2>
        <h2 class="titre">Mes participations sont-elles déductibles des impôts ? Quels sont les documents à remplir ?</h2>
        <p>
                                                        Seuls les projets figurant dans la catégorie « Avec réduction fiscale » pourront vous permettre de déduire fiscalement une partie de votre don.
        </p>
        <p>
                                                        En effet, les dons versés à une œuvre ou un organisme d’intérêt général, une fondation ou une association reconnues d’utilité publique, sont déductibles des impôts à hauteur 66% du montant des sommes versées, dans la limite de 20% du revenu imposable du donateur.
        </p>
        <p>
                                                        A la fin de la période de collecte, vous recevrez un reçu fiscal (formulaire Cerfa n° 11580*03) émis par l’association porteuse du projet. Vous devrez déclarer le montant de votre don au moment de remplir votre déclaration de revenus. Pour cela, il vous suffit d'inscrire le montant des dons dans la rubrique 7, case 7UF de votre déclaration.
        </p>
        <p>
                                                        NB : A compter de 2013, il n'est plus nécessaire de joindre vos justificatifs (reçus fiscaux notamment) à votre déclaration d'impôts - qu'elle soit "papier" ou sur internet – mais vous devrez conserver précieusement votre reçu fiscal en cas de contrôle fiscal.
        </p>
        <h2 class="titre">J’ai reçu des gains après avoir participé à un projet « à retour financier ». Comment et où dois-je les déclarer ?</h2>
        <h4><em>Je suis un particulier ou un auto-entrepreneur</em></h4>
        <p>
                                                        Le retour financier généré sur MyMajorCompany est imposable dans la catégorie des BNC (Bénéfices Non Commerciaux).
        </p>
        <h4><em>Je suis une société</em></h4>
        <p>
                                                        Le retour financier généré sur MyMajorCompany au profit d’une entreprise soumise à l’IS doit être inclus dans la constitution du bénéfice imposable. Il est considéré comme un revenu exceptionnel et doit donc être imputé en compte de classe 77 « Produits exceptionnels » et intégré au résultat fiscal du formulaire n°2065 lors de l’établissement de votre liasse fiscale..
        </p>
        <h2 class="titre">Mes informations personnelles sont-elles transmises aux porteurs de projets ?</h2>
        <p>
                                                        Vos informations personnelles telles que votre adresse postale et adresse mail ne sont transmises au porteur de projet qu’à partir du moment où le projet atteint son objectif de collecte. Le porteur de projet pourra ainsi vous envoyer directement vos contreparties.
        </p>
        <p>
                                                        Votre adresse mail et numéro de téléphone ne sont en aucun cas communiqués, mais libre à vous de les donner au porteur de projet de votre propre gré si cela facilite la gestion des contreparties.
        </p>
        <h2 class="titre">A qui reviennent les droits d’un projet ?</h2>
        <p>
                                                        Tous les droits de propriété sur le projet et ses contenus demeurent la propriété exclusive du porteur de projet. Pour en savoir plus, consultez la section 5.2 Cession de Droits de nos 
            <a href="http://www.mymajorcompany.com/terms">Conditions Générales d’Utilisation</a>.
        </p>
    </div>
</div>
                        <hr>
    <p class="clearfix">
            <a class="pull-left" href="/about/projects">« Aide aux porteurs de projets</a>
                <a class="pull-right" href="/about/confidentiality">La confidentialité de vos données personnelles »</a>
        </p>
            
            </div>
            <div id="confidentialite" class="tab-pane fade">
            
                            <h2 class="titre">La confidentialité de vos données personnelles</h2>
<p>
    MyMajorCompany.com (« MyMajorCompany ») est totalement engagé à protéger la vie privée des visiteurs de notre Site Internet et de nos clients. Les membres de l’équipe MyMajorCompany sont eux-mêmes clients d’autres sites internet et comprennent pleinement l’importance et le respect de la confidentialité sur internet. Nous ne divulguons pas d’informations sur nos clients à des tiers, sauf si cela est nécessaire, notamment dans le but de vous fournir un service - par exemple pour organiser l’expédition d’une contrepartie suite à votre participation sur un projet, effectuer des contrôles bancaires ou de sécurité, réaliser des recherches et études sur la clientèle, ou lorsque vous nous avez consentement donné votre accord.
</p>
<h2 class="titre">Votre consentement</h2>
<p>
    Nous nous engageons à ne pas céder vos nom, adresse, adresse email, informations de paiement ou toute information personnelle à des tiers sans votre autorisation. Cependant, MyMajorCompany ne serait être tenu pour responsable d'actions commises par des sites tiers à partir desquels vous pouvez vous être connecté au Site Internet de MyMajorCompany ou avoir été dirigé vers lui.
</p>
<p>
    MyMajorCompany reçoit un certain nombre de données personnelles du fait de votre utilisation des services du Site Internet. Ces données comprennent vos noms, adresses, adresses électroniques, sexe, informations de paiement, et date de naissance. Ces informations sont collectées pour nous permettre de traiter les commandes, pour permettre aux responsables de projets de vous envoyer vos contreparties, de communiquer avec vous à propos de vos commandes et de votre compte, pour gérer nos dossiers, améliorer nos sites, prévenir et détecter la fraude et permettre à des tiers de fournir des prestations techniques, logistiques ou autres pour notre compte.
</p>
<p>
    Nous pouvons partager vos informations avec d'autres sociétés du groupe MyMajorCompany ainsi qu'avec des tiers qui fournissent des services pour notre compte (par exemple les prestataires qui opèrent le paiement, ou les sociétés fournissant des prestations informatiques). Ces informations ne leur sont uniquement fournies dans le but de fournir ces services et ne peuvent être utilisées pour un autre objet. Nous exigeons de tout tiers avec qui nous partageons des données personnelles de les traiter avec la plus grande confidentialité et conformément aux lois applicables.
</p>
<p>
    Nous pouvons également partager vos données personnelles dans les conditions requises par la loi ou pour mettre en œuvre nos Conditions Générales d’Utilisation.
</p>
<h2 class="titre">Connexion via les réseaux sociaux</h2>
<p>
    Lorsque vous vous connectez à MyMajorCompany en utilisant un compte sur un réseau social (par ex. Facebook ou Google+), nous recevons les informations de votre profil de base qui sont publiquement disponibles. Ces informations peuvent comprendre votre identifiant utilisé pour vous identifier par média social, vos noms, réseaux, (ou "cercles") et sexe. Selon la plateforme du réseau social que vous utilisez pour vous connecter, nous pouvons également recevoir votre adresse électronique, la liste de vos amis ou des personnes qui vous suivent et votre photo de profil et/ou photo de couverture.
</p>
<p>
    Toute information personnelle reçue par MyMajorCompany de cette manière sera traitée conformément aux termes des présentes Règles de Confidentialité.
    <br>
    Toute information collectée du fait de votre connexion via un réseau social sera utilisée pour les besoins des fonctionnalités et à des fins d'analyse du Site Internet.
    <br>
    Aucune information obtenue du fait de votre connexion via un réseau social ne sera utilisée à des fins de marketing si ce n'est avec votre accord.
</p>
<h2 class="titre">Informations de Paiement</h2>
<p>
    Seule, une partie des informations de paiement sont conservées par MyMajorCompany (4 premiers chiffres et 2 derniers chiffres ainsi que la date de validité de la carte bancaire utilisée).
    <br>
    Ces informations seront conservées de manière sécurisée et vous sont transmises à titre informatif dans chaque récapitulatif de commande que nous vous adressons, afin que vous puissiez vous assurer du moyen de paiement utilisé.
    <br>
    Si vous avez des questions en ce qui concerne la conservation de vos données de paiement, merci d'adresser un courriel à l’adresse : service.utlisateurs@mymajorcompany.com.
</p>
<h2 class="titre">Communication et marketing</h2>
<p>
    Si vous avez effectué un achat sur notre Site Internet, nous pourrons de manière occasionnelle vous tenir informé de nos actualités et offres spéciales, par courriel. Vous aurez aussi la possibilité de recevoir des communications de notre part ou de tiers sélectionnés, lorsque vous deviendrez membre de MyMajorCompany en cochant la case prévue à cet effet.
</p>
<p>
    Tous les membres de MyMajorCompany ont la possibilité de refuser de recevoir des communications marketing de notre part et/ou de tiers sélectionnés. Si vous souhaitez ne plus recevoir de communications de notre part et/ou de tiers sélectionnés, vous pouvez le faire en allant sur le Site Internet MyMajorCompany, dans la rubrique « Mon compte », après vous être enregistré et/ou identifié. Vous pouvez aussi cliquer sur le lien « se désinscrire » affiché dans chaque courriel que nous pourrons vous adresser.
</p>
<h2 id="cookies">Les Cookies</h2>
<p>
    Un cookie ou « traceur » est un petit fichier qui est envoyé sur votre ordinateur, votre téléphone ou tout autre appareil lorsque vous vous rendez sur un site internet et qui reconnaîtra votre appareil lors de futures visites. Ce type de programme accomplit différentes tâches comme la reconnaissance de vos préférences ou des produits choisis. Il vous aide à améliorer la manière dont vous profitez du Site Internet et permet de s'assurer que les publicités et offres que vous voyez en ligne vous correspondent mieux. Ces cookies peuvent être répartis en 4 catégories, qui sont chacune décrites ci- dessous :
</p>
<h2 class="titre">1ère catégorie : Les cookies strictement nécessaires</h2>
<p>
    Ces cookies sont essentiels pour permettre au Site Internet de vous fournir les services que vous avez demandés comme pour récapituler les produits mis dans votre panier.
</p>
<h2 class="titre">2ème Catégorie : Cookies de performance</h2>
<p>
    Ce type de cookies collecte des informations anonymes sur la manière dont les gens utilisent le Site Internet et les données sont fusionnées avec celles d'autres utilisateurs pour nous permettre d'améliorer le fonctionnement du Site Internet. Par exemple, nous utilisons les cookies de Google Analytics pour nous aider à comprendre comment les consommateurs arrivent sur notre Site Internet, surfent ou utilisent le Site Internet et pour mettre en lumière les zones dans lesquels nous pouvons améliorer les choses, comme la navigation, l'expérience de la commande et les campagnes de marketing. Les données conservées par ces cookies ne comprennent jamais les détails des données personnelles à partir desquelles votre identité peut être établie.
</p>
<h2 class="titre">3ème Catégorie : Cookies de fonctionnalités</h2>
<p>
    Ces cookies permettent de conserver les choix que vous avez faits comme la langue.
    <br>
    Ces cookies peuvent ensuite être utilisés pour vous faire profiter d'une expérience plus appropriée avec vos choix et de rendre les visites sur le Site Internet plus adaptées et plaisantes. Ces informations sont également fusionnées avec celles d'autres utilisateurs, sur une base anonyme, pour nous permettre d'améliorer le fonctionnement du Site Internet.
</p>
<h2 class="titre">Accepter ou refuser les cookies</h2>
<p>
    Vous disposez de différents moyens pour gérer les cookies.
</p>
<h4><em>Le paramétrage de votre navigateur internet</em></h4>
<p>
    Vous pouvez à tout moment choisir de désactiver ces cookies. Votre navigateur peut également êtreparamétré pour vous signaler les cookies qui sont déposés dans votre ordinateur et vous demander de les accepter ou non. Vous pouvez accepter ou refuser les cookies au cas par cas ou bien les refuser systématiquement une fois pour toutes.
    <br>
    Conformément à la loi, le délai de validité du consentement au dépôt des cookies, et par conséquent la durée de vie des cookies elle-même, est de 13 mois maximum.
    <br>
    Nous vous rappelons que le paramétrage est susceptible de modifier vos conditions d'accès à nos services nécessitant l'utilisation de cookies.
    <br>
    Si votre navigateur est configuré de manière à refuser l'ensemble des cookies, vous ne pourrez pas effectuer d'achats ou profiter de fonctions essentielles de notre site, comme par exemple stocker des articles dans votre panier. Afin de gérer les cookies au plus près de vos attentes nous vous invitons à paramétrer votre navigateur en tenant compte de la finalité des cookies telle que mentionnée ci-avant.
</p>
<p>
    Voici comment contrôler ou empêcher l'enregistrement des cookies :
    <br>
    La configuration de chaque navigateur est différente. Elle est décrite dans le menu d'aide de votre navigateur, qui vous permettra de savoir de quelle manière modifier vos souhaits en matière de cookies.
    <br>
    Vous pouvez désactiver les cookies en suivant les instructions comme suit :
</p>
<p>
    <strong>
    1/ si vous utilisez le navigateur Internet Explorer</strong><br>
    - Dans Internet Explorer, cliquez sur le bouton Outils, puis sur Options Internet.
    <br>
    - Sous l'onglet Général, sous Historique de navigation, cliquez sur Paramètres.
    <br>
    - Cliquez sur le bouton Afficher les fichiers.
    <br>
    - Cliquez sur l'en-tête de colonne Nom pour trier tous les fichiers dans l'ordre alphabétique, puis parcourez la liste jusqu'à ce que vous voyiez des fichiers commençant par le préfixe « Cookie ». (tous les cookies possèdent ce préfixe et contiennent habituellement le nom du site Web qui a créé le cookie).
    <br>
    - Sélectionnez le ou les cookies comprenant le nom « mymajorcompany » et supprimez-les
    <br>
    - Fermez la fenêtre qui contient la liste des fichiers, puis cliquez deux fois sur OK pour retourner dans Internet Explorer.
</p>
<p>
    <strong>
    2/ si vous utilisez le navigateur Firefox</strong><br>
    - Allez dans l'onglet » Outils « du navigateur puis sélectionnez le menu « Options »
    <br>
    - Dans la fenêtre qui s'affiche, choisissez « Vie privée » et cliquez sur « Affichez les cookies »
    <br>
    - Dans la fenêtre qui s'affiche, choisissez « Vie privée » et cliquez sur « Affichez les cookies »
    <br>
    - Repérez les fichiers qui contiennent le nom « mymajorcompany ».
    <br>
    - Sélectionnez-les et supprimez-les.
</p>
<p>
    <strong>
    3/ si vous utilisez le navigateur Safari</strong><br>
    - Dans votre navigateur, choisissez le menu Édition &gt; Préférences.
    <br>
    - Cliquez sur Sécurité.
    <br>
    - Cliquez sur Afficher les cookies.
    <br>
    - Sélectionnez les cookies qui contiennent le nom «mymajorcompany » et cliquez sur Effacer ou sur Tout effacer.
    <br>
    - Après avoir supprimé les cookies, cliquez sur Terminé.
</p>
<p>
    <strong>
    4/ si vous utilisez le navigateur Google Chrome</strong><br>
    - Cliquez sur l'icône du menu Outils.
    <br>
    - Sélectionnez Options.
    <br>
    - Cliquez sur l'onglet Options avancées et accédez à la section "Confidentialité".
    <br>
    - Cliquez sur le bouton Afficher les cookies.
    <br>
    - Repérez les fichiers qui contiennent le nom « mymajorcompany ».
    <br>
    - Sélectionnez-les et supprimez-les.
    <br>
    - Cliquez sur » Fermer « pour revenir à votre navigateur
</p>
<h4><em>Le paramétrage sur une plateforme de gestion des cookies</em></h4>
<p>
    Vous pouvez gérer vos cookies en vous rendant sur des plateformes de gestion des cookies proposées par les professionnels de la publicité.
</p>
<h2 class="titre">Protection de votre sécurité</h2>
<p>
    Nous pourrions être amenés à utiliser les informations personnelles vous concernant afin d'effectuerdes vérifications contre les fraudes. Les informations personnelles que vous nous avez fournies peuvent être transmises à une agence d'évaluation du crédit ou de prévention contre les fraudes qui pourra archiver ces informations. Il s'agit d'une simple vérification d'identité. Aucune vérification de solvabilité ne sera effectuée et votre note de solvabilité restera inchangée.
</p>
<h2 class="titre">Le transfert de vos données personnelles</h2>
<p>
    Les données personnelles que nous collectons auprès de vous peuvent être transférées et stockées hors de l’Espace Economique Européen (« EEE »). Elles peuvent aussi être traitées par du personnel travaillant pour MyMajorCompany, ou pour l’un de nos fournisseurs, situé hors de l’EEE. Cette méthode de traitement permet par exemple de traiter vos commandes, de traiter vos moyens de paiement ou de vous fournir des services.
</p>
<p>
    Malheureusement la transmission d’informations par internet n’est pas totalement sécurisée. Nous ferons tout notre possible pour protéger vos données personnelles mais nous ne sommes pas en mesure de garantir la sécurité des données transmises à notre Site Internet. Ainsi toute transmission d’informations se fait à vos risques. Une fois reçues vos informations personnelles, nous utilisons des procédures strictes et des dispositifs de sécurité afin d’éviter l’accès non autorisé à vos informations personnelles.
</p>
<h2 class="titre">Divulgation de vos informations</h2>
<p>
    Nous pouvons divulguer vos informations personnelles à n’importe quelle société appartenant ànotre groupe. Nous pouvons aussi divulguer ces informations à des tiers :
</p>
<p>
    - dans le cadre de l'envoi des contreparties d'un projet auquel vous avez participé. Dans ce cas, des informations tel que votre nom, votre prénom, votre adresse postale pourront être transmises au responsable du projet afin de lui permettre de délivrer les contreparties auquel vous avez droit;
    <br>
    - dans le cas où MyMajorCompany, ou la quasi-totalité de ses actifs, seraient acquis par un tiers. Dans ce cas, les données personnelles sur nos clients pourraient constituer l’un des actifs transférés ;
    <br>
    - dans le cas où nous serions dans l’obligation de divulguer ces informations ou partager vos données personnelles afin de nous conformer à une obligation légale, afin d’appliquer ou faire appliquer nos conditions, ou afin de protéger les droits, la propriété ou la sécurité d’MyMajorCompany, de ses clients ou autres. Cette divulgation inclut l’échange d’informations avec d’autres sociétés et organismes, afin de faire respecter les règles en matière de protection contre la fraude ou de réduction du risque de crédit.
</p>
<h2 class="titre">Site appartenant à des tiers</h2>
<p>
    Notre Site Internet peut contenir des liens hypertextes vers et depuis les sites internet des membres de notre réseau de partenaires, d'annonceurs et de tiers. Si vous suivez un lien vers l’un de ces sites internet, veuillez noter que ces derniers possèdent chacun leur propre politique en matière de protection des données personnelles et que notre responsabilité ne saurait être engagée quant à ces politiques. Veuillez consulter ces politiques avant de soumettre vos données personnelles à ces sites.
</p>
<h2 class="titre">Vérifier vos renseignements</h2>
<p>
    Si vous souhaitez vérifier les informations personnelles que vous avez transmises à MyMajorCompany, vous pouvez le faire en nous contactant via l’adresse e-mail ou l’adresse mentionnées ci-dessous. En raison de notre procédure de sécurité, nous pouvons vous demander des preuves de votre identité avant de révéler ces informations. Cette preuve consiste en vos adresse e-mail et mot de passe demandés lors de votre enregistrement. Ces informations doivent donc être conservées précieusement car vous serez responsable de toutes mesures que nous pourrions prendre en réponse à une demande d'un tiers utilisant vos adresses e-mail et mot de passe. Nous vous recommandons de ne pas utiliser la fonction de votre navigateur permettant de mémoriser les mots de passe car cela permet à des tiers utilisant votre matériel informatique d’accéder à vos informations personnelles.
</p>
<h2 id="contact" class="titre">Nous contacter</h2>
<p>
    MyMajorCompany.com est le responsable du traitement de données au sens de la loi n° 78-17 du 6 janvier 1978 relative à l'informatique, aux fichiers et aux libertés telle que modifiée.
</p>
<p>
    Vous bénéficiez d'un droit d'accès aux informations que MyMajorCompany détient sur vous et votre droit d'accès peut être exercé conformément à la loi. Votre demande d'accès est gratuite mais, selon les informations personnelles que vous nous demandez, il est possible que nous vous facturions les frais que nous supportons du fait de cette demande d'accès. Nous vous informerons de ces frais dès réception de votre demande d'accès et vous nous confirmerez si vous souhaitez poursuivre cette demande de communication en payant ces frais.
</p>
<p>
    Conformément à la loi "Informatique et Libertés" (loi du 6 janvier 1978 telle que modifiée), vous bénéficiez d'un droit d'accès, de modification et de retrait des données personnelles vous concernant, que vous pouvez exercer en vous adressant à l’adresse e-mail ou l’adresse mentionnées ci-dessous. Vous pouvez également, pour des motifs légitimes, vous opposer au traitement des données vous concernant.
</p>
<p>
    Nous sommes toujours heureux de répondre à nos clients (même s’il s’agit d’une réclamation). Nous sommes reconnaissant du temps que vous passez à nous fournir les informations nécessaires afin de rendre nos clients entièrement satisfaits de nos services. Notre souhait est que vous retourniez sur le Site Internet et que vous le recommandiez à vos amis et famille. N’hésitez pas à contacter le service clients de l’équipe MyMajorCompany qui sera ravi de répondre à vos questions ou commentaires, notamment relatifs à cette déclaration, ou si vous souhaitez que nous cessions de traiter vos informations personnelles.
</p>
<p>
    Vous pouvez contacter le service clients par mail à cette adresse:
    <br>
    service.utilisateurs@mymajorcompany.com
</p>
<p>
    ou par courrier à cette adresse :
    <br>
    MyMajorCompany
    <br>
    Service Utilisateurs
    <br>
    20 rue du sentier
    <br>
    75002 Paris
    <br>
    FRANCE
</p>
<p>
    ou par téléphone à ce numéro&nbsp;: 01 40 13 16 10.
</p>
                        <hr>
    <p class="clearfix">
            <a class="pull-left" href="/about/investor">« Aide aux contributeurs</a>
                <a class="pull-right" href="/about/team">L'Equipe »</a>
        </p>
            </div>
        </div></div>
    </tiles:putAttribute>
</tiles:insertDefinition>