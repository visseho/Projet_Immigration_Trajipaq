#!/usr/bin/R

# Recode columns
# Assumes that questionnaire is imported when exported as CSV in English
# using read_csv and named immigr_init
immigr_init <-
  immigr_init %>%
  dplyr::rename(
    "age" = "1 - Quel âge avez vous ?",
    "year_qc" = "2 - Depuis combien d'années habitez vous au Québec ?",
    "born_country" = "3a - Dans quel pays êtes vous né ?",
    "country_15" = "3b - Dans quel pays avez vous vécu jusqu'à vos 15 ans ?",
    "genre" = "4 - A quel genre vous identifiez vous ?",
    "statut" = "5 - Quel est votre statut actuel au Canada ?",
    "etat_civil" = "6 - Quel est votre état civil ?",
    "diplome" = "7 - Quel est votre niveau de diplôme le plus élevé ?",
    "revenu" = "8 - Dans quelle tranche se situe votre revenu actuel ?",
    "lang_enf" = "9 - Quelle est la première langue que vous avez apprise à la maison pendant votre enfance et que vous comprenez encore aujourd'hui ?",
    "lang_home" = "10 - Parmi ces langues, laquelle parlez vous le plus souvent à la maison ? Indiquez plus d'une langue seulement si elles sont parlées aussi souvent l'une que l'autre à la maison.",
    "lang_home_autre" = "11 - Parlez vous d'autres langues à la maison ?",
    "lang_trav" = "12 -  Parmi ces langues, laquelle parlez vous le plus souvent au travail ? Indiquez plus d'une langue seulement si elles sont parlées aussi souvent l'une que l'autre au travail.",
    "lang_trav_autre" = "13 - Parlez vous d'autres langues au travail ?",
    "rs_util" = "14 - Quel(s) réseaux sociaux utilisez vous régulièrement ?",
    "rs_time" = "15 - Combien de temps passez vous par jour sur les réseaux sociaux ?",
    "rs_disc_same" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour discuter avec des personnes qui proviennent de mon pays d'origine]",
    "rs_disc_diff" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour discuter avec des personnes qui ne proviennent pas de mon pays d'origine]",
    "rs_hab" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Par habitude]",
    "rs_div" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour me divertir]",
    "rs_ptime" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour passer le temps]",
    "rs_inf" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour m'informer]",
    "rs_renc_same" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour rencontrer des personnes de mon pays d'origine]",
    "rs_renc_diff" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour rencontrer des personnes qui ne proviennent pas de mon pays d'origine]",
    "rs_trav" = "16 - Pour quelles raisons allez-vous sur les réseaux sociaux ? [Pour le travail]",
    "online_memb_migr" = "17 - Êtes-vous membre de groupes en ligne regroupant des personnes immigrantes ?",
    "inf_pol_home" = "18 - Au cours du dernier mois, à quelle fréquence avez-vous utilisé les réseaux sociaux pour lire des journaux ou des revues en ligne traitant d'une question politique ou sociale précise en lien avec votre pays d'origine ?",
    "inf_polqc" = "19 - Au cours du dernier mois, à quelle fréquence avez-vous utilisé les réseaux sociaux pour lire des journaux ou des revues en ligne traitant d'une question politique ou sociale précise en lien avec le Québec ?",
    "ton_migr" = "20a - Quelle est la tonalité du contenu que vous observez sur les réseaux sociaux sur le thème de l'immigration au Québec ?",
    "ton_why" = "20b - Pourquoi selon vous ?",
    "disc_maj_same" = "21 - Sur les réseaux sociaux, les amis avec lesquels je discute le plus souvent sont majoritairement... [Des personnes provenant de mon pays d'origine]",
    "disc_maj_migr" = "21 - Sur les réseaux sociaux, les amis avec lesquels je discute le plus souvent sont majoritairement... [D'autres personnes immigrantes]",
    "disc_maj_qc" = "21 - Sur les réseaux sociaux, les amis avec lesquels je discute le plus souvent sont majoritairement... [Des personnes nées au Québec]",
    "ton_migr_pk" = "20b - Pourquoi selon vous ?",
    "act_cult" = "22 - Durant le dernier mois, à quelle fréquence avez-vous participé à des activités (culturelle, sportive, sociale, etc.) avec une personne qui ne provient pas de votre pays d'origine ?",
    "sentim_app" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [J'ai le sentiment d'appartenir à la société québécoise.]",
    "chez_moi_qc" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [Je me sens chez moi au Québec.]",
    "feel_queb" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [Je me sens Québécois(e).]",
    "forget_orig" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [Il faut faire oublier ses origines pour se faire accepter au Québec.]",
    "percep_qc" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [On me voit comme un(e) Québécois(e).]",
    "dev_qc" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [Je veux devenir Québécois(e).]",
    "agir_qc" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [En public, j’essaye d’agir comme un Québécois.]",
    "import_adapt" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [Je crois que c’est important de m’adapter à la culture québécoise.]",
    "iso_qc" = "23 - Veuillez répondre selon votre niveau d'accord ou de désaccord avec les énoncés suivants: [Vous vous sentez isolé(e) au Québec.]",
    "future_live" = "24 - Dans le futur, où souhaiteriez vous vivre ?",
    "valeur_fr" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [Le français en tant que langue officielle du Québec]",
    "valeur_dem" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [Le respect de la démocratie]",
    "valeur_equal" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [L’égalité entre les sexes*]",
    "valeur_med14" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [La liberté de consentir ou de refuser des interventions en soins de santé dès l’âge de 14 ans]",
    "valeur_relation" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [La liberté de choisir sont statut de relation amoureuse]",
    "valeur_laic" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [La laïcité au Québec**]",
    "valeur_droitlib" = "25 - Dans quelle mesure êtes-vous personnellement d’accord avec les valeurs suivantes? [Le respect de la Charte des droits et libertés de la personne]",
    "qc_val_fr" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [Le français en tant que langue officielle du Québec]",
    "qc_val_dem" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [Le respect de la démocratie]",
    "qc_val_equal" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [L’égalité entre les sexes*]",
    "qc_val_med14" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [La liberté de consentir ou de refuser des interventions en soins de santé dès l’âge de 14 ans]",
    "qc_val_relation" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [La liberté de choisir sont statut de relation amoureuse]",
    "qc_val_laic" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [La laïcité au Québec**]",
    "qc_val_droitlib" = "26 - Selon vous, dans quelles mesures les québécois(es) partagent, en général, les valeurs suivantes? [Le respect de la Charte des droits et libertés de la personne]",
    "comp_polqc" = "27 - Comment qualifiez vous votre compréhension des enjeux politiques auxquels fait face le Québec?",
    "disc_polqc" = "28 - Durant le dernier mois, à quelle fréquence avez-vous discuté avec une autre personne d'enjeux politiques québécois ?",
    "interp_polqc" = "29 - À quel niveau vous sentez vous interpelé(e) par les enjeux politiques au Québec ?",
    "polqc_CAQ" = "30 - Les questions suivantes concernent les partis politiques québécois et certains évènements récents. [La Coalition Avenir Québec promulgue le communisme]",
    "polqc_PQ" = "30 - Les questions suivantes concernent les partis politiques québécois et certains évènements récents. [Le Parti Québécois est attaché au fédéralisme]" ,
    "polqc_PLQ" = "30 - Les questions suivantes concernent les partis politiques québécois et certains évènements récents. [Le Parti Libéral du Québec milite pour l'indépendance du Québec]",
    "polqc_QS" = "30 - Les questions suivantes concernent les partis politiques québécois et certains évènements récents. [Québec Solidaire promulgue le socialisme démocratique]",
    "polqc_L21" = "30 - Les questions suivantes concernent les partis politiques québécois et certains évènements récents. [La loi 21 concerne les droits des personnes LGBTQ+]",
    "polqc_L96" = "30 - Les questions suivantes concernent les partis politiques québécois et certains évènements récents. [La loi 96 concerne l'utilisation de la langue française]",
    "pm_qc" = "31 - À quel parti est associé le premier ministre actuel du Québec ?",
    "maj_AN" = "32 - Quel parti occupe la majorité des sièges de l'Assemblée nationale ?",
    "vote_age" = "33 - Quel est l'âge légal pour voter au Québec ?",
    "act_conv" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai essayé de convaincre quelqu'un de changer d'opinion politique]",
    "act_inf" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai essayé d'influencer le vote d'autres personnes]",
    "act_opinion_pol" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai émis mon opinion politique en public ou sur les réseaux sociaux]",
    "act_disc_pol" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai discuté de sujets politiques en public ou sur les réseaux sociaux]",
    "act_contact_pol" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai contacté un politicien ou un membre du gouvernement]",
    "act_workpol" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai travaillé pour un parti ou un groupe activiste]",
    "act_symb" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai affiché un symbole politique (sticker, badge, vêtement, etc.)]",
    "act_pet" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai signé une pétition]",
    "act_manif" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai pris part à une manifestation publique et licite]",
    "act_collect_sign" = "34 - Durant les douze derniers mois, avez-vous réalisé l'une des actions suivantes ? [J'ai collecté des signatures pour promouvoir une pétition]",
    "fr_lire" = "35 - Communiquer en français implique plusieurs dimensions comme la lecture, l'écoute, l'écriture et la parole. Veuillez évaluer votre compétence à employer le français en répondant aux énoncés suivants. [Je peux lire et comprendre les points principaux d'un article de presse dont le sujet m'est familier]",
    "fr_conv" = "35 - Communiquer en français implique plusieurs dimensions comme la lecture, l'écoute, l'écriture et la parole. Veuillez évaluer votre compétence à employer le français en répondant aux énoncés suivants. [Dans une conversation, je peux parler de sujets familiers et exprimer mon opinion]",
    "fr_ecrire" = "35 - Communiquer en français implique plusieurs dimensions comme la lecture, l'écoute, l'écriture et la parole. Veuillez évaluer votre compétence à employer le français en répondant aux énoncés suivants. [Je peux écrire des lettres à propos de mes expériences, de mes sentiments et dévènements]",
    "fr_radiotele" = "35 - Communiquer en français implique plusieurs dimensions comme la lecture, l'écoute, l'écriture et la parole. Veuillez évaluer votre compétence à employer le français en répondant aux énoncés suivants. [Je comprends les points principaux d'une émission télévisée ou radiodiffusée à propos d'un sujet familier]",
    "comment" = "Avez-vous des commentaires que vous aimeriez partager avec nous ?",
    "int_quali" = "Dans la cadre de cette même recherche, avez vous un intérêt à participer à une séance de discussion? Si oui,  veuillez partager votre courriel.",
    "continuant" = "En continuant :"
    )

# Remove invalid 
immigr_init <- immigr_init[immigr_init$year_qc != "Moins d'un an", ]

# Convert to factor
immigr_init <-
  immigr_init %>%
  mutate_if(sapply(immigr_init, is.character), as.factor)%>%
  select(!c(Timestamp, continuant, comment, int_quali))
immigr_init <- mutate_all(immigr_init, as.character)

# General label tables
label_likert_a<- c("Pas du tout d'accord", "Pas d'accord", "Plutôt pas d'accord", "Plutôt d'accord", "D'accord", "Tout à fait d'accord")
label_likert_b <- c("Pas du tout", "Dans une certaine mesure", "Dans une grande mesure")
label_yes_no <- c("Non", "Oui")
label_true_false <- c("Faux", "Vrai")
label_usage_a <- c("Moins d'une fois par mois", "Au moins une fois par mois (mais pas chaque semaine)", "Au moins une fois par semaine (mais pas tous les jours)", "Au moins une fois par jour")
label_usage_b <- c("Jamais", "Rarement", "Quelques fois", "Plusieurs fois", "Très souvent", "Tout le temps")
label_usage_c <- c("Moins d'une heure", "Entre une et trois heures", "Entre trois et cinq heures", "Entre cinq et sept heures", "Plus de sept heures")
label_understanding_a <- c("Pas bonne du tout", "Pas bonne", "Plutôt bonne", "Bonne", "Très bonne")
label_understanding_b <- c("Très mal", "Mal", "Plutôt bien", "Bien", "Très bien")
label_desire <- c("Pas interpelé(e)", "Pas vraiment interpelé(e)", "Plutôt interpelé(e)", "Interpelé(e)", "Très interpelé(e)")
label_polparty <- c("Le Parti Québécois", "Québec Solidaire", "Le Parti Libéral du Québec", "La Coalition Avenir Québec")

# Specific label tables
label_age <- c("Entre 18 et 25 ans", "Entre 26 et 35 ans", "Entre 36 et 50 ans", "Plus de 50 ans")
label_year_qc <- c("1 an", "2 ans", "3 ans", "4 ans", "5 ans", "6 ans", "7 ans", "8 ans", "9 ans", "10 ans", "Plus de 10 ans")
label_country <- c("Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Anguilla", "Antigua & Barbuda", "Argentina", "Armenia", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia & Herzegovina", "Botswana", "Brazil", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Caryman Islands", "Central African Republic", "Chad", "Chile", "China", "CHina - Hon Kong / Macau", "Colombia", "Comoros", "Congo", "Congo, Democratic Republic of (DRC)", "Costa Rica", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Eswatini", "Ethiopia", "Fiji", "Finland", "France", "French Guiana", "Gabon", "Gambia, Republic of The", "Georgia", "Germany", "Ghana", "Great Britain", "Greece", "Grenada", "Guadeloupe", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Honduras", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Israel and the Occupied Territories", "Italy", "Ivory Coast (Cote d'Ivoire)", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Korea, Democratic Republic of (North Korea)", "Korea, Republic of (South Korea)", "Kosovo", "Kuwait", "Kyrgyz Rebpulic (Kyrgyzstan)", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Moldova, Republic of", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar/Burma", "Namibia", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "North Macedeonia, Rebublic of", "Norway", "Oman", "Pacific Islands", "Pakistan", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Puerto Rico", "Qata r", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Kitts and Nevis", "St Lucia", "Saint Vincent and the Grenadines", "Samoa", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovak Rebpulic (Slovakia)", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Sudan", "Spain", "Sri Lanka", "Sudan", "Suriname", "Sweden", "Switzerland", "Syria", "Tajikistan", "Tanzania", "Thailand", "Timor Leste", "Togo", "Trinidad and Tobago", "Tunisia", "Türkiye (Turkey)", "Turkmenistan", "Turks & Caicos Islnads", "Uganda", "Ukraine", "United Arab Emirates", "United States of America (USA)", "Uruguay", "Uzbekistan", "Venezuela", "Vietnam", "Virgin Islands (UK)", "Virgin Islands (US)", "Yemen", "Zambia", "Zimbabwe")
label_genre <- c("Homme", "Femme", "Autre")
label_statut <- c("Citoyen(ne) canadien(ne)", "Résident(e) permanent(e)", "Immigré(e) doté(e) d'un permis d'études", "Immigré(e) doté(e) d'un permis de travail", "Immigré(e) doté(e) d'un permis vacances/travail")
label_etat_civil <- c("Conjoint(e) de fait", "Marié(e)", "Séparé(e)", "Divorcé(e)", "Veuf ou veuve", "Célibataire")
label_diplome <- c("Aucun", "Secondaire", "Collégial (cégep)", "Premier cycle universitaire (baccalauréat, Bac+3)", "Second cycle universitaire (maîtrise, Bac+5)", "Troisième cycle universitaire (doctorat, Ph.D)")
label_revenu <- c("Aucun revenu", "1 $ à 24 999 $", "25 000 $ à 49 999 $", "50 000 $ à 69 999 $", "70 000 $ à 99 999 $", "100 000 $ à 499 999 $", "500 000 $ et plus")
label_rs_util <- c("Facebook", "YouTube", "Instagram", "Messenger", "WhatsApp", "WeChat", "TikTok", "Douyin", "Telegram", "QQ", "Weibo", "Qzone", "Snapchat", "Kuaishou", "Pinterest", "Twitter", "Reddit", "LinkedIn", "Quora", "Skype", "Tieba", "Viber", "Teams", "imo", "Picsart", "Likee", "Discord", "Twitch", "Stack Exhange")
label_future_live <- c("Je veux définitivement vivre le reste de ma vie au Québec", "Je veux probablement vivre le reste de ma vie au Québec", "Je ne suis pas sûr(e) de vivre le reste de ma vie au Québec", "Je vais probablement quitter le Québec à un moment donné", "Je vais définitivement quitter le Québec à un moment donné")
label_vote_age <- c("Il n'y a pas d'âge requis", "15 ans", "18 ans", "21 ans")
label_ton_migr <- c("Très négative", "Négative", "Plutôt négative", "Neutre", "Plutôt positive", "Positive", "Très positive")
label_rs_polqc_score <- c("Extrèmement bas",  "Très bas", "Modérément bas", "Plutôt bas", "Neutre", "Plutôt haut", "Modérément haut", "Très haut", "Extrèmement haut")
label_act_part_score <- c("Extrèmement bas",  "Très bas", "Modérément bas", "Plutôt bas", "Neutre-bas", "Neutre-haut", "Plutôt haut", "Modérément haut", "Très haut", "Extrèmement haut")

# Remove invalid 
immigr_init <- immigr_init[immigr_init$year_qc != "Moins d'un an", ]

# Create orig before recoding
immigr_orig <- immigr_init

# Apply recoding for all variables matching special values
# TODO: as.numeric isn't converting these correctly. For now, not end of world as we don't analyze these
immigr_init <- immigr_init %>%
  mutate_all(~ if_else(. == "Je ne sais pas", "99", .))
immigr_init <- immigr_init %>%
  mutate_all(~ if_else(. == "Je ne préfère pas répondre", "98", .))
immigr_init <- immigr_init %>%
  mutate_all(~ if_else(. == "Je ne souhaite pas répondre", "98", .))

# Recode stray value
immigr_init <- within(immigr_init, {
  statut <- Recode(statut, '
    "Permis Post Diplôme" = "Immigré(e) doté(e) d\'un permis de travail";
  ', as.factor=TRUE)
  genre <- Recode(genre, '
    "Genderqueer" = "Autre";
    "Fluide" = "Autre";
  ', as.factor=TRUE)
})

# Apply recoding using as.numeric for general
for (likert_a in c("rs_disc_same", "rs_disc_diff", "rs_hab", "rs_div", "rs_ptime", "rs_inf", "rs_renc_same", "rs_renc_diff", "rs_trav", "disc_maj_same", "disc_maj_migr", "disc_maj_qc", "sentim_app", "chez_moi_qc", "feel_queb", "forget_orig", "percep_qc", "dev_qc", "agir_qc", "import_adapt", "iso_qc" )) {
  immigr_init[likert_a] <- as.numeric(factor(immigr_init[[likert_a]], levels = label_likert_a, ordered = TRUE))
}
for (likert_b in c("valeur_fr", "valeur_dem", "valeur_equal", "valeur_med14", "valeur_relation", "valeur_laic", "valeur_droitlib", "qc_val_fr", "qc_val_dem", "qc_val_equal", "qc_val_med14", "qc_val_relation", "qc_val_laic", "qc_val_droitlib")) {
  immigr_init[likert_b] <- as.numeric(factor(immigr_init[[likert_b]], levels = label_likert_b, ordered = TRUE))
}
for (yes_no in c("online_memb_migr", "act_conv", "act_inf", "act_opinion_pol", "act_disc_pol", "act_contact_pol", "act_workpol", "act_symb", "act_pet", "act_manif", "act_collect_sign")) {
  immigr_init[yes_no] <- as.numeric(factor(immigr_init[[yes_no]], levels = label_yes_no, ordered = TRUE)) - 1
}
for (true_false in c("polqc_CAQ", "polqc_PQ", "polqc_PLQ", "polqc_QS", "polqc_L21", "polqc_L96")) {
  immigr_init[true_false] <- as.numeric(factor(immigr_init[[true_false]], levels = label_true_false, ordered = TRUE))
}
for (usage_a in c("inf_pol_home", "inf_polqc")) {
  immigr_init[usage_a] <- as.numeric(factor(immigr_init[[usage_a]], levels = label_usage_a, ordered = TRUE))
}
for (usage_b in c("disc_polqc", "act_cult")) {
  immigr_init[usage_b] <- as.numeric(factor(immigr_init[[usage_b]], levels = label_usage_b, ordered = TRUE))
} 
for (usage_c in c("rs_time")) {
  immigr_init[usage_c] <- as.numeric(factor(immigr_init[[usage_c]], levels = label_usage_c, ordered = TRUE))
}
for (understanding_a in c("comp_polqc")) {
  immigr_init[understanding_a] <- as.numeric(factor(immigr_init[[understanding_a]], levels = label_understanding_a, ordered = TRUE))
}
for (understanding_b in c("fr_lire", "fr_conv", "fr_ecrire", "fr_radiotele")) {
  immigr_init[understanding_b] <- as.numeric(factor(immigr_init[[understanding_b]], levels = label_understanding_b, ordered = TRUE))
}
for (desire in c("interp_polqc")) {
  immigr_init[desire] <- as.numeric(factor(immigr_init[[desire]], levels = label_desire, ordered = TRUE))
}
for (polparty in c("pm_qc", "maj_AN")) {
  immigr_init[polparty] <- as.numeric(factor(immigr_init[[polparty]], levels = label_polparty, ordered = TRUE))
}

# Apply recoding using as.numeric for specific
immigr_init$age <- as.numeric(factor(immigr_init$age, levels = label_age, ordered = TRUE))
immigr_init$year_qc <- as.numeric(factor(immigr_init$year_qc, levels = label_year_qc, ordered = TRUE))
immigr_init$born_country <- as.numeric(factor(immigr_init$born_country, levels = label_country, ordered = TRUE))
immigr_init$country_15 <- as.numeric(factor(immigr_init$country_15, levels = label_country, ordered = TRUE))
immigr_init$genre <- as.numeric(factor(immigr_init$genre, levels = label_genre, ordered = TRUE))
immigr_init$statut <- as.numeric(factor(immigr_init$statut, levels = label_statut, ordered = TRUE))
immigr_init$etat_civil <- as.numeric(factor(immigr_init$etat_civil, levels = label_etat_civil, ordered = TRUE))
immigr_init$diplome <- as.numeric(factor(immigr_init$diplome, levels = label_diplome, ordered = TRUE))
immigr_init$revenu <- as.numeric(factor(immigr_init$revenu, levels = label_revenu, ordered = TRUE))
immigr_init$ton_migr <- as.numeric(factor(immigr_init$ton_migr, levels = label_ton_migr, ordered = TRUE))

#Inflate sample size to something usable
set.seed(1234)
immigr_sample1 <- slice_sample(immigr_init, n = 15)
set.seed(1235)
immigr_sample2 <- slice_sample(immigr_init, n = 15)
set.seed(1236)
immigr_sample3 <- slice_sample(immigr_init, n = 15)
set.seed(1237)
immigr_sample4 <- slice_sample(immigr_init, n = 15)
set.seed(1238)
immigr_sample5 <- slice_sample(immigr_init, n = 15)
set.seed(1239)
immigr_sample6 <- slice_sample(immigr_init, n = 15)


immigr_totale <- bind_rows(immigr_init, immigr_sample1, immigr_sample2, immigr_sample3, immigr_sample4, immigr_sample5, immigr_sample6)
